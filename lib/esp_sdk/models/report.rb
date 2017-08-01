=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ESP
  # A(n) Report object
  class Report < BaseObject
    # Unique ID
    attr_accessor :id

    # ISO 8601 timestamp when the alert was created
    attr_accessor :created_at

    # Status of the report
    attr_accessor :status

    # ISO 8601 timestamp when the alert was last updated
    attr_accessor :updated_at

    # Associated Organization
    attr_accessor :organization

    # Associated Organization Id
    attr_accessor :organization_id

    # Associated Sub Organization
    attr_accessor :sub_organization

    # Associated Sub Organization Id
    attr_accessor :sub_organization_id

    # Associated Team
    attr_accessor :team

    # Associated Team Id
    attr_accessor :team_id

    # Associated External Account
    attr_accessor :external_account

    # Associated External Account Id
    attr_accessor :external_account_id

    # Associated Alerts
    attr_accessor :alerts

    # Associated Alerts Ids
    attr_accessor :alert_ids

    # Associated Stat
    attr_accessor :stat

    # Associated Stat Id
    attr_accessor :stat_id

    # Array of error messages if the request failed
    attr_accessor :errors


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'status' => :'status',
        :'updated_at' => :'updated_at',
        :'organization' => :'organization',
        :'organization_id' => :'organization_id',
        :'sub_organization' => :'sub_organization',
        :'sub_organization_id' => :'sub_organization_id',
        :'team' => :'team',
        :'team_id' => :'team_id',
        :'external_account' => :'external_account',
        :'external_account_id' => :'external_account_id',
        :'alerts' => :'alerts',
        :'alert_ids' => :'alert_ids',
        :'stat' => :'stat',
        :'stat_id' => :'stat_id',
        :'errors' => :'errors'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'created_at' => :'DateTime',
        :'status' => :'String',
        :'updated_at' => :'DateTime',
        :'organization' => :'Organization',
        :'organization_id' => :'Integer',
        :'sub_organization' => :'SubOrganization',
        :'sub_organization_id' => :'Integer',
        :'team' => :'Team',
        :'team_id' => :'Integer',
        :'external_account' => :'ExternalAccount',
        :'external_account_id' => :'Integer',
        :'alerts' => :'Array<Alert>',
        :'alert_ids' => :'Array<Integer>',
        :'stat' => :'Stat',
        :'stat_id' => :'Integer',
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

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.has_key?(:'sub_organization')
        self.sub_organization = attributes[:'sub_organization']
      end

      if attributes.has_key?(:'sub_organization_id')
        self.sub_organization_id = attributes[:'sub_organization_id']
      end

      if attributes.has_key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.has_key?(:'team_id')
        self.team_id = attributes[:'team_id']
      end

      if attributes.has_key?(:'external_account')
        self.external_account = attributes[:'external_account']
      end

      if attributes.has_key?(:'external_account_id')
        self.external_account_id = attributes[:'external_account_id']
      end

      if attributes.has_key?(:'alerts')
        if (value = attributes[:'alerts']).is_a?(Array)
          self.alerts = value
        end
      end

      if attributes.has_key?(:'alert_ids')
        if (value = attributes[:'alert_ids']).is_a?(Array)
          self.alert_ids = value
        end
      end

      if attributes.has_key?(:'stat')
        self.stat = attributes[:'stat']
      end

      if attributes.has_key?(:'stat_id')
        self.stat_id = attributes[:'stat_id']
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
          status == o.status &&
          updated_at == o.updated_at &&
          organization == o.organization &&
          organization_id == o.organization_id &&
          sub_organization == o.sub_organization &&
          sub_organization_id == o.sub_organization_id &&
          team == o.team &&
          team_id == o.team_id &&
          external_account == o.external_account &&
          external_account_id == o.external_account_id &&
          alerts == o.alerts &&
          alert_ids == o.alert_ids &&
          stat == o.stat &&
          stat_id == o.stat_id &&
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
      [id, created_at, status, updated_at, organization, organization_id, sub_organization, sub_organization_id, team, team_id, external_account, external_account_id, alerts, alert_ids, stat, stat_id, errors].hash
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
