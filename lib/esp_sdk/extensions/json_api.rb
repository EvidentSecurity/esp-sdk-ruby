require_relative 'utils'

# @private
module ESP
  class JsonApi
    attr_reader :json_api_hash

    def initialize(json_api_hash)
      # ap json_api_hash, index: false, indent: -2
      @json_api_hash = json_api_hash
    end

    def convert
      included = json_api_hash.delete(:included)
      json_api_hash.tap do |e|
        wrap(e.fetch(:data, {})).each do |object|
          parse_object!(object, included)
        end
      end
    end

    private

    def wrap(object)
      if object.nil?
        []
      elsif object.respond_to?(:to_ary)
        object.to_ary || [object]
      else
        [object]
      end
    end

    def parse_object!(object, included = nil)
      return object unless object.respond_to?(:each)
      merge_attributes!(object)
      parse_elements(object)
      parse_relationships!(object, included)
      object
    end

    def parse_elements(object)
      object.each_value do |value|
        if value.is_a? Hash
          parse_object!(value)
        elsif value.is_a? Array
          value.map! { |o| parse_object!(o) }
        end
      end
    end

    def parse_relationships!(object, included)
      object.fetch(:relationships, {}).each do |assoc, details|
        extract_foreign_keys!(object, assoc, details)
        merge_included_objects!(object, assoc, details[:data], included)
      end
    end

    def merge_attributes!(object)
      return unless object.is_a? Hash
      object.merge! object.delete(:attributes) unless object[:attributes].nil?
    end

    def extract_foreign_keys!(object, assoc, assoc_details)
      data         = assoc_details[:data]
      related_link = assoc_details.fetch(:links, {})[:related]
      if !data.nil?
        parse_data(object, assoc, data)
      elsif !related_link.nil?
        parse_related_link(object, assoc, related_link)
      end
    end

    def parse_data(object, assoc, data)
      if data.is_a? Array
        object[:"#{Utils.singularize(assoc.to_s)}_ids"] = data.map { |d| d[:id] }
      else
        object[:"#{assoc}_id"] = data[:id]
      end
    end

    def parse_related_link(object, assoc, related_link)
      # parse the url to get the id if the data node is not returned
      match                  = /(?<id>\d+)\.json$/.match(related_link)
      object[:"#{assoc}_id"] = match[:id][0] if match
      return unless object[:"#{assoc}_id"].nil?
      uri = URI.parse(related_link)
      object[:"#{Utils.singularize(assoc.to_s)}_ids"] = Rack::Utils.parse_nested_query(CGI.unescape(uri.query, 'UTF-8')).fetch('filter', {}).fetch('id_in', []) unless uri.query.nil?
    end

    def merge_included_objects!(object, assoc, data, included)
      return if included.nil?
      object[assoc] = case data
                      when Array
                        merge_nested_included_objects(object, data, included)
                      when Hash
                        merge_nested_included_objects(object, [data], included).first
                      end
    end

    def merge_nested_included_objects(object, data, included)
      assocs = []
      included.each do |i|
        next if i.nil?
        i_type = i['type'] || i[:type]
        i_id   = i['id'] || i[:id]
        data.each do |d|
          d_type = d['type'] || d[:type]
          d_id   = d['id'] || d[:id]
          if i_type == d_type && i_id == d_id
            assocs << i
          end
        end
      end
      # Remove the object from the included array to prevent an infinite loop if one of it's associations relates back to itself.
      assoc_included = included.dup
      assoc_included.delete(object)
      assocs.map { |i| parse_object!(i, assoc_included) }
    end
  end
end
