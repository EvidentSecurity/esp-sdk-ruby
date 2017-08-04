=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) Compliance Standard object
  class ComplianceStandard < BaseObject
    # Unique ID
    attr_accessor :id

    # Created At
    attr_accessor :created_at

    # Name
    attr_accessor :name

    # The description for this Compliance Standard
    attr_accessor :description

    # Updated At
    attr_accessor :updated_at

    # Associated Compliance Domains
    attr_accessor :compliance_domains

    # Associated Compliance Domains Ids
    attr_accessor :compliance_domain_ids

    # Associated Compliance Controls
    attr_accessor :compliance_controls

    # Associated Compliance Controls Ids
    attr_accessor :compliance_control_ids

    # Array of error messages if the request failed
    attr_accessor :errors


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'name' => :'name',
        :'description' => :'description',
        :'updated_at' => :'updated_at',
        :'compliance_domains' => :'compliance_domains',
        :'compliance_domain_ids' => :'compliance_domain_ids',
        :'compliance_controls' => :'compliance_controls',
        :'compliance_control_ids' => :'compliance_control_ids',
        :'errors' => :'errors'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'created_at' => :'DateTime',
        :'name' => :'String',
        :'description' => :'String',
        :'updated_at' => :'DateTime',
        :'compliance_domains' => :'Array<ComplianceDomain>',
        :'compliance_domain_ids' => :'Array<Integer>',
        :'compliance_controls' => :'Array<ComplianceControl>',
        :'compliance_control_ids' => :'Array<Integer>',
        :'errors' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'compliance_domains')
        if (value = attributes[:'compliance_domains']).is_a?(Array)
          self.compliance_domains = value
        end
      end

      if attributes.has_key?(:'compliance_domain_ids')
        if (value = attributes[:'compliance_domain_ids']).is_a?(Array)
          self.compliance_domain_ids = value
        end
      end

      if attributes.has_key?(:'compliance_controls')
        if (value = attributes[:'compliance_controls']).is_a?(Array)
          self.compliance_controls = value
        end
      end

      if attributes.has_key?(:'compliance_control_ids')
        if (value = attributes[:'compliance_control_ids']).is_a?(Array)
          self.compliance_control_ids = value
        end
      end

      if attributes.has_key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          name == o.name &&
          description == o.description &&
          updated_at == o.updated_at &&
          compliance_domains == o.compliance_domains &&
          compliance_domain_ids == o.compliance_domain_ids &&
          compliance_controls == o.compliance_controls &&
          compliance_control_ids == o.compliance_control_ids &&
          errors == o.errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created_at, name, description, updated_at, compliance_domains, compliance_domain_ids, compliance_controls, compliance_control_ids, errors].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ESP.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end