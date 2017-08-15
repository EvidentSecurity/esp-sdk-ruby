=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class SignatureCustomRiskLevelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a(n) Signature Custom Risk Level
    # 
    # @param external_account_id The ID of the external account this signature custom risk level is for
    # @param risk_level The risk-level of the problem identified by the signature. Valid values are Low, Medium, High
    # @param signature_id The signature ID this signature custom risk level is for
    # @param [Hash] opts the optional parameters
    # @return [SignatureCustomRiskLevel]
    def create(external_account_id, risk_level, signature_id, opts = {})
      data, _status_code, _headers = create_with_http_info(external_account_id, risk_level, signature_id, opts)
      return data
    end

    # Create a(n) Signature Custom Risk Level
    # 
    # @param external_account_id The ID of the external account this signature custom risk level is for
    # @param risk_level The risk-level of the problem identified by the signature. Valid values are Low, Medium, High
    # @param signature_id The signature ID this signature custom risk level is for
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureCustomRiskLevel, Fixnum, Hash)>] SignatureCustomRiskLevel data, response status code and response headers
    def create_with_http_info(external_account_id, risk_level, signature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignatureCustomRiskLevelsApi.create ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling SignatureCustomRiskLevelsApi.create" if external_account_id.nil?
      # verify the required parameter 'risk_level' is set
      fail ArgumentError, "Missing the required parameter 'risk_level' when calling SignatureCustomRiskLevelsApi.create" if risk_level.nil?
      # verify enum value
      unless ['Low', 'Medium', 'High'].include?(risk_level)
        fail ArgumentError, "invalid value for 'risk_level', must be one of Low, Medium, High"
      end
      # verify the required parameter 'signature_id' is set
      fail ArgumentError, "Missing the required parameter 'signature_id' when calling SignatureCustomRiskLevelsApi.create" if signature_id.nil?
      # resource path
      local_var_path = "/api/v2/signature_custom_risk_levels.json_api".sub('{format}','json_api')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["external_account_id"] = external_account_id
      form_params["risk_level"] = risk_level
      form_params["signature_id"] = signature_id

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureCustomRiskLevel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureCustomRiskLevelsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a(n) SignatureCustomRiskLevel
    # 
    # @param id SignatureCustomRiskLevel Id
    # @param [Hash] opts the optional parameters
    # @return [SignatureCustomRiskLevel]
    def destroy(id, opts = {})
      data, _status_code, _headers = destroy_with_http_info(id, opts)
      return data
    end

    # Remove a(n) SignatureCustomRiskLevel
    # 
    # @param id SignatureCustomRiskLevel Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureCustomRiskLevel, Fixnum, Hash)>] SignatureCustomRiskLevel data, response status code and response headers
    def destroy_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignatureCustomRiskLevelsApi.destroy ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SignatureCustomRiskLevelsApi.destroy" if id.nil?
      # resource path
      local_var_path = "/api/v2/signature_custom_risk_levels/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureCustomRiskLevel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureCustomRiskLevelsApi#destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Signature Custom Risk Levels
    # 
    # @param external_account_id The ID of the external account to retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Objects that can be included in the response:  external_account,signature  See Including Objects for more information.
    # @option opts [Hash<String, String>] :page Page Number and Page Size.  Example: page: {number: 1, size: 20}
    # @return [PaginatedCollection]
    def list(external_account_id, opts = {})
      data, _status_code, _headers = list_with_http_info(external_account_id, opts)
      return data
    end

    # Get a list of Signature Custom Risk Levels
    # 
    # @param external_account_id The ID of the external account to retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Objects that can be included in the response:  external_account,signature  See Including Objects for more information.
    # @option opts [Hash<String, String>] :page Page Number and Page Size.  Example: page: {number: 1, size: 20}
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(external_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignatureCustomRiskLevelsApi.list ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling SignatureCustomRiskLevelsApi.list" if external_account_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

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
      form_params["page"] = opts[:'page'] if !opts[:'page'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureCustomRiskLevelsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Signature Custom Risk Level
    # 
    # @param id Signature Custom Risk Level Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Objects that can be included in the response:  external_account,signature  See Including Objects for more information.
    # @return [SignatureCustomRiskLevel]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Signature Custom Risk Level
    # 
    # @param id Signature Custom Risk Level Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Objects that can be included in the response:  external_account,signature  See Including Objects for more information.
    # @return [Array<(SignatureCustomRiskLevel, Fixnum, Hash)>] SignatureCustomRiskLevel data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignatureCustomRiskLevelsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SignatureCustomRiskLevelsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/signature_custom_risk_levels/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SignatureCustomRiskLevel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureCustomRiskLevelsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) Signature Custom Risk Level
    # 
    # @param id Signature Custom Risk Level Id
    # @param external_account_id The ID of the external account this signature custom risk level is for
    # @param risk_level The risk-level of the problem identified by the signature. Valid values are Low, Medium, High
    # @param signature_id The signature ID this signature custom risk level is for
    # @param [Hash] opts the optional parameters
    # @return [SignatureCustomRiskLevel]
    def update(id, external_account_id, risk_level, signature_id, opts = {})
      data, _status_code, _headers = update_with_http_info(id, external_account_id, risk_level, signature_id, opts)
      return data
    end

    # Update a(n) Signature Custom Risk Level
    # 
    # @param id Signature Custom Risk Level Id
    # @param external_account_id The ID of the external account this signature custom risk level is for
    # @param risk_level The risk-level of the problem identified by the signature. Valid values are Low, Medium, High
    # @param signature_id The signature ID this signature custom risk level is for
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureCustomRiskLevel, Fixnum, Hash)>] SignatureCustomRiskLevel data, response status code and response headers
    def update_with_http_info(id, external_account_id, risk_level, signature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignatureCustomRiskLevelsApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SignatureCustomRiskLevelsApi.update" if id.nil?
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling SignatureCustomRiskLevelsApi.update" if external_account_id.nil?
      # verify the required parameter 'risk_level' is set
      fail ArgumentError, "Missing the required parameter 'risk_level' when calling SignatureCustomRiskLevelsApi.update" if risk_level.nil?
      # verify enum value
      unless ['Low', 'Medium', 'High'].include?(risk_level)
        fail ArgumentError, "invalid value for 'risk_level', must be one of Low, Medium, High"
      end
      # verify the required parameter 'signature_id' is set
      fail ArgumentError, "Missing the required parameter 'signature_id' when calling SignatureCustomRiskLevelsApi.update" if signature_id.nil?
      # resource path
      local_var_path = "/api/v2/signature_custom_risk_levels/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["external_account_id"] = external_account_id
      form_params["risk_level"] = risk_level
      form_params["signature_id"] = signature_id

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureCustomRiskLevel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureCustomRiskLevelsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
