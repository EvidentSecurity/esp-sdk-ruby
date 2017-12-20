=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class IntegrationsServiceNowApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a ServiceNow Integration
    # 
    # @param instance_url The URL for the ServiceNow instance
    # @param username The username for accessing the ServiceNow instance
    # @param password A password to access the JIRA project
    # @param incident_type The password for accessing the ServiceNow instance. Valid values are incident, sn_si_incident
    # @param name Name of the integration
    # @param external_account_ids External accounts for integration
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
    # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
    # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
    # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
    # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
    # @option opts [Array<Integer>] :signature_ids Signatures for integration
    # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
    # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
    # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
    # @return [IntegrationServicenow]
    def create(instance_url, username, password, incident_type, name, external_account_ids, opts = {})
      data, _status_code, _headers = create_with_http_info(instance_url, username, password, incident_type, name, external_account_ids, opts)
      return data
    end

    # Create a ServiceNow Integration
    # 
    # @param instance_url The URL for the ServiceNow instance
    # @param username The username for accessing the ServiceNow instance
    # @param password A password to access the JIRA project
    # @param incident_type The password for accessing the ServiceNow instance. Valid values are incident, sn_si_incident
    # @param name Name of the integration
    # @param external_account_ids External accounts for integration
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
    # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
    # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
    # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
    # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
    # @option opts [Array<Integer>] :signature_ids Signatures for integration
    # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
    # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
    # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
    # @return [Array<(IntegrationServicenow, Fixnum, Hash)>] IntegrationServicenow data, response status code and response headers
    def create_with_http_info(instance_url, username, password, incident_type, name, external_account_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsServiceNowApi.create ..."
      end
      # verify the required parameter 'instance_url' is set
      fail ArgumentError, "Missing the required parameter 'instance_url' when calling IntegrationsServiceNowApi.create" if instance_url.nil?
      # verify the required parameter 'username' is set
      fail ArgumentError, "Missing the required parameter 'username' when calling IntegrationsServiceNowApi.create" if username.nil?
      # verify the required parameter 'password' is set
      fail ArgumentError, "Missing the required parameter 'password' when calling IntegrationsServiceNowApi.create" if password.nil?
      # verify the required parameter 'incident_type' is set
      fail ArgumentError, "Missing the required parameter 'incident_type' when calling IntegrationsServiceNowApi.create" if incident_type.nil?
      # verify enum value
      unless ['incident', 'sn_si_incident'].include?(incident_type)
        fail ArgumentError, "invalid value for 'incident_type', must be one of incident, sn_si_incident"
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling IntegrationsServiceNowApi.create" if name.nil?
      # verify the required parameter 'external_account_ids' is set
      fail ArgumentError, "Missing the required parameter 'external_account_ids' when calling IntegrationsServiceNowApi.create" if external_account_ids.nil?
      # resource path
      local_var_path = "/api/v2/integrations/servicenow.json_api".sub('{format}','json_api')

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["instance_url"] = instance_url
      form_params["username"] = username
      form_params["password"] = password
      form_params["incident_type"] = incident_type
      form_params["name"] = name
      form_params["external_account_ids"] = @api_client.build_collection_param(external_account_ids, :multi)
      form_params["all_high_risk"] = opts[:'all_high_risk'] if !opts[:'all_high_risk'].nil?
      form_params["all_medium_risk"] = opts[:'all_medium_risk'] if !opts[:'all_medium_risk'].nil?
      form_params["all_low_risk"] = opts[:'all_low_risk'] if !opts[:'all_low_risk'].nil?
      form_params["send_updates"] = opts[:'send_updates'] if !opts[:'send_updates'].nil?
      form_params["send_when_suppressed"] = opts[:'send_when_suppressed'] if !opts[:'send_when_suppressed'].nil?
      form_params["signature_ids"] = @api_client.build_collection_param(opts[:'signature_ids'], :multi) if !opts[:'signature_ids'].nil?
      form_params["statuses"] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      form_params["custom_signature_ids"] = @api_client.build_collection_param(opts[:'custom_signature_ids'], :multi) if !opts[:'custom_signature_ids'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationServicenow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsServiceNowApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single ServiceNow Integration
    # 
    # @param integration_id The ID of the integration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
    # @return [IntegrationServicenow]
    def show(integration_id, opts = {})
      data, _status_code, _headers = show_with_http_info(integration_id, opts)
      return data
    end

    # Show a single ServiceNow Integration
    # 
    # @param integration_id The ID of the integration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
    # @return [Array<(IntegrationServicenow, Fixnum, Hash)>] IntegrationServicenow data, response status code and response headers
    def show_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsServiceNowApi.show ..."
      end
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsServiceNowApi.show" if integration_id.nil?
      # resource path
      local_var_path = "/api/v2/integrations/{integration_id}/servicenow.json_api".sub('{format}','json_api').sub('{' + 'integration_id' + '}', integration_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationServicenow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsServiceNowApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a ServiceNow Integration
    # 
    # @param integration_id The ID of the integration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :instance_url The URL for the ServiceNow instance
    # @option opts [String] :username The username for accessing the ServiceNow instance
    # @option opts [String] :password A password to access the JIRA project
    # @option opts [String] :incident_type The password for accessing the ServiceNow instance. Valid values are incident, sn_si_incident
    # @option opts [String] :name Name of the integration
    # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
    # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
    # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
    # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
    # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
    # @option opts [Array<Integer>] :signature_ids Signatures for integration
    # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
    # @option opts [Array<Integer>] :external_account_ids External accounts for integration
    # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
    # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
    # @return [IntegrationServicenow]
    def update(integration_id, opts = {})
      data, _status_code, _headers = update_with_http_info(integration_id, opts)
      return data
    end

    # Update a ServiceNow Integration
    # 
    # @param integration_id The ID of the integration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :instance_url The URL for the ServiceNow instance
    # @option opts [String] :username The username for accessing the ServiceNow instance
    # @option opts [String] :password A password to access the JIRA project
    # @option opts [String] :incident_type The password for accessing the ServiceNow instance. Valid values are incident, sn_si_incident
    # @option opts [String] :name Name of the integration
    # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
    # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
    # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
    # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
    # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
    # @option opts [Array<Integer>] :signature_ids Signatures for integration
    # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
    # @option opts [Array<Integer>] :external_account_ids External accounts for integration
    # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
    # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
    # @return [Array<(IntegrationServicenow, Fixnum, Hash)>] IntegrationServicenow data, response status code and response headers
    def update_with_http_info(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationsServiceNowApi.update ..."
      end
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsServiceNowApi.update" if integration_id.nil?
      if opts[:'incident_type'] && !['incident', 'sn_si_incident'].include?(opts[:'incident_type'])
        fail ArgumentError, 'invalid value for "incident_type", must be one of incident, sn_si_incident'
      end
      # resource path
      local_var_path = "/api/v2/integrations/{integration_id}/servicenow.json_api".sub('{format}','json_api').sub('{' + 'integration_id' + '}', integration_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["instance_url"] = opts[:'instance_url'] if !opts[:'instance_url'].nil?
      form_params["username"] = opts[:'username'] if !opts[:'username'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?
      form_params["incident_type"] = opts[:'incident_type'] if !opts[:'incident_type'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["all_high_risk"] = opts[:'all_high_risk'] if !opts[:'all_high_risk'].nil?
      form_params["all_medium_risk"] = opts[:'all_medium_risk'] if !opts[:'all_medium_risk'].nil?
      form_params["all_low_risk"] = opts[:'all_low_risk'] if !opts[:'all_low_risk'].nil?
      form_params["send_updates"] = opts[:'send_updates'] if !opts[:'send_updates'].nil?
      form_params["send_when_suppressed"] = opts[:'send_when_suppressed'] if !opts[:'send_when_suppressed'].nil?
      form_params["signature_ids"] = @api_client.build_collection_param(opts[:'signature_ids'], :multi) if !opts[:'signature_ids'].nil?
      form_params["statuses"] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      form_params["external_account_ids"] = @api_client.build_collection_param(opts[:'external_account_ids'], :multi) if !opts[:'external_account_ids'].nil?
      form_params["custom_signature_ids"] = @api_client.build_collection_param(opts[:'custom_signature_ids'], :multi) if !opts[:'custom_signature_ids'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationServicenow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsServiceNowApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
