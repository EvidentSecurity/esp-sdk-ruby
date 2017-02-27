# Copied from Rack::Utils
module ESP
  module Rack
    # Rack::Utils contains a grab-bag of useful methods for writing web
    # applications adopted from all kinds of Ruby libraries.

    module Utils
      # ParameterTypeError is the error that is raised when incoming structural
      # parameters (parsed by parse_nested_query) contain conflicting types.
      class ParameterTypeError < TypeError; end

      # InvalidParameterError is the error that is raised when incoming structural
      # parameters (parsed by parse_nested_query) contain invalid format or byte
      # sequence.
      class InvalidParameterError < ArgumentError; end
      # Unescapes a URI escaped string with +encoding+. +encoding+ will be the
      # target encoding of the string returned, and it defaults to UTF-8
      if defined?(::Encoding)
        def unescape(s, encoding = Encoding::UTF_8)
          URI.decode_www_form_component(s, encoding)
        end
      else
        def unescape(s, encoding = nil)
          URI.decode_www_form_component(s, encoding)
        end
      end
      module_function :unescape

      DEFAULT_SEP = /[&;] */n

      class << self
        attr_accessor :key_space_limit
        attr_accessor :param_depth_limit
        attr_accessor :multipart_part_limit
      end

      # The default number of bytes to allow parameter keys to take up.
      # This helps prevent a rogue client from flooding a Request.
      self.key_space_limit = 65536

      # Default depth at which the parameter parser will raise an exception for
      # being too deep.  This helps prevent SystemStackErrors
      self.param_depth_limit = 100

      # parse_nested_query expands a query string into structural types. Supported
      # types are Arrays, Hashes and basic value types. It is possible to supply
      # query strings with parameters of conflicting types, in this case a
      # ParameterTypeError is raised. Users are encouraged to return a 400 in this
      # case.
      def parse_nested_query(qs, d = nil)
        params = KeySpaceConstrainedParams.new

        (qs || '').split(d ? /[#{d}] */n : DEFAULT_SEP).each do |p|
          k, v = p.split('=', 2).map { |s| unescape(s) }

          normalize_params(params, k, v)
        end

        return params.to_params_hash
      rescue ArgumentError => e
        raise InvalidParameterError, e.message
      end
      module_function :parse_nested_query

      # normalize_params recursively expands parameters into structural types. If
      # the structural types represented by two different parameter names are in
      # conflict, a ParameterTypeError is raised.
      def normalize_params(params, name, v = nil, depth = Utils.param_depth_limit)
        raise RangeError if depth <= 0

        name =~ %r(\A[\[\]]*([^\[\]]+)\]*)
        k = $1 || ''
        after = $' || ''

        return if k.empty?

        if after == ""
          params[k] = v
        elsif after == "["
          params[name] = v
        elsif after == "[]"
          params[k] ||= []
          raise ParameterTypeError, "expected Array (got #{params[k].class.name}) for param `#{k}'" unless params[k].is_a?(Array)
          params[k] << v
        elsif after =~ %r(^\[\]\[([^\[\]]+)\]$) || after =~ %r(^\[\](.+)$)
          child_key = $1
          params[k] ||= []
          raise ParameterTypeError, "expected Array (got #{params[k].class.name}) for param `#{k}'" unless params[k].is_a?(Array)
          if params_hash_type?(params[k].last) && !params[k].last.key?(child_key)
            normalize_params(params[k].last, child_key, v, depth - 1)
          else
            params[k] << normalize_params(params.class.new, child_key, v, depth - 1)
          end
        else
          params[k] ||= params.class.new
          raise ParameterTypeError, "expected Hash (got #{params[k].class.name}) for param `#{k}'" unless params_hash_type?(params[k])
          params[k] = normalize_params(params[k], after, v, depth - 1)
        end

        return params
      end
      module_function :normalize_params

      def params_hash_type?(obj)
        obj.kind_of?(KeySpaceConstrainedParams) || obj.kind_of?(Hash)
      end
      module_function :params_hash_type?

      class KeySpaceConstrainedParams
        def initialize(limit = Utils.key_space_limit)
          @limit  = limit
          @size   = 0
          @params = {}
        end

        def [](key)
          @params[key]
        end

        def []=(key, value)
          @size += key.size if key && !@params.key?(key)
          raise RangeError, 'exceeded available parameter key space' if @size > @limit
          @params[key] = value
        end

        def key?(key)
          @params.key?(key)
        end

        def to_params_hash
          hash = @params
          hash.keys.each do |key|
            value = hash[key]
            if value.kind_of?(self.class)
              if value.object_id == self.object_id
                hash[key] = hash
              else
                hash[key] = value.to_params_hash
              end
            elsif value.kind_of?(Array)
              value.map! {|x| x.kind_of?(self.class) ? x.to_params_hash : x}
            end
          end
          hash
        end
      end
    end
  end
end
