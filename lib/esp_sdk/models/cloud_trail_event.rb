=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) Cloud Trail Event object
  class CloudTrailEvent < BaseObject
    # Links to Associated Objects
    attr_accessor :relationships

    # Array of error messages if the request failed
    attr_accessor :errors

    # Unique Id
    attr_accessor :id

    # GUID generated by CloudTrail to uniquely identify each event
    attr_accessor :event_id

    # The requested action, which is one of the actions listed in the API Reference for the service
    attr_accessor :event_name

    # ISO 8601 timestamp when the cloud trail event occurred
    attr_accessor :event_time

    # The apparent IP address that the request was made from for the given event
    attr_accessor :ip_address

    # The agent through which the request was made, such as the AWS Management Console or an AWS SDK
    attr_accessor :user_agent

    # The user name associated with the cloud trail event
    attr_accessor :username

    # Associated Alert
    attr_accessor :alert

    # Associated Alert Id
    attr_accessor :alert_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'relationships' => :'relationships',
        :'errors' => :'errors',
        :'id' => :'id',
        :'event_id' => :'event_id',
        :'event_name' => :'event_name',
        :'event_time' => :'event_time',
        :'ip_address' => :'ip_address',
        :'user_agent' => :'user_agent',
        :'username' => :'username',
        :'alert' => :'alert',
        :'alert_id' => :'alert_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'relationships' => :'Object',
        :'errors' => :'Array<String>',
        :'id' => :'Integer',
        :'event_id' => :'Integer',
        :'event_name' => :'String',
        :'event_time' => :'DateTime',
        :'ip_address' => :'String',
        :'user_agent' => :'String',
        :'username' => :'String',
        :'alert' => :'Alert',
        :'alert_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'relationships')
        self.relationships = attributes[:'relationships']
      end

      if attributes.has_key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.has_key?(:'event_name')
        self.event_name = attributes[:'event_name']
      end

      if attributes.has_key?(:'event_time')
        self.event_time = attributes[:'event_time']
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.has_key?(:'user_agent')
        self.user_agent = attributes[:'user_agent']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'alert')
        self.alert = attributes[:'alert']
      end

      if attributes.has_key?(:'alert_id')
        self.alert_id = attributes[:'alert_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @event_id.nil?
        invalid_properties.push("invalid value for 'event_id', event_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @event_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          relationships == o.relationships &&
          errors == o.errors &&
          id == o.id &&
          event_id == o.event_id &&
          event_name == o.event_name &&
          event_time == o.event_time &&
          ip_address == o.ip_address &&
          user_agent == o.user_agent &&
          username == o.username &&
          alert == o.alert &&
          alert_id == o.alert_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [relationships, errors, id, event_id, event_name, event_time, ip_address, user_agent, username, alert, alert_id].hash
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
