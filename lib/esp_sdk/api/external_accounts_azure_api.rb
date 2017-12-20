=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class ExternalAccountsAzureApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an Azure External Account
    # The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.
    # @param subscription_id Azure subscription ID
    # @param client_id Azure client ID
    # @param tenant_id Azure tenant ID
    # @param app_key Azure app key
    # @param name Name
    # @param team_id The ID of the team the external account belongs to
    # @param [Hash] opts the optional parameters
    # @return [ExternalAccountAzure]
    def create(subscription_id, client_id, tenant_id, app_key, name, team_id, opts = {})
      data, _status_code, _headers = create_with_http_info(subscription_id, client_id, tenant_id, app_key, name, team_id, opts)
      return data
    end

    # Create an Azure External Account
    # The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.
    # @param subscription_id Azure subscription ID
    # @param client_id Azure client ID
    # @param tenant_id Azure tenant ID
    # @param app_key Azure app key
    # @param name Name
    # @param team_id The ID of the team the external account belongs to
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalAccountAzure, Fixnum, Hash)>] ExternalAccountAzure data, response status code and response headers
    def create_with_http_info(subscription_id, client_id, tenant_id, app_key, name, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsAzureApi.create ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling ExternalAccountsAzureApi.create" if subscription_id.nil?
      # verify the required parameter 'client_id' is set
      fail ArgumentError, "Missing the required parameter 'client_id' when calling ExternalAccountsAzureApi.create" if client_id.nil?
      # verify the required parameter 'tenant_id' is set
      fail ArgumentError, "Missing the required parameter 'tenant_id' when calling ExternalAccountsAzureApi.create" if tenant_id.nil?
      # verify the required parameter 'app_key' is set
      fail ArgumentError, "Missing the required parameter 'app_key' when calling ExternalAccountsAzureApi.create" if app_key.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling ExternalAccountsAzureApi.create" if name.nil?
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling ExternalAccountsAzureApi.create" if team_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/azure.json_api".sub('{format}','json_api')

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
      form_params["subscription_id"] = subscription_id
      form_params["client_id"] = client_id
      form_params["tenant_id"] = tenant_id
      form_params["app_key"] = app_key
      form_params["name"] = name
      form_params["team_id"] = team_id

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalAccountAzure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsAzureApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset Log URL for an Azure External Account
    # This endpoint invalidates the previous URL and generates a new one. The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.
    # @param external_account_id The ID of the external account to reset an Azure log URL for
    # @param [Hash] opts the optional parameters
    # @return [ExternalAccountAzure]
    def reset_url(external_account_id, opts = {})
      data, _status_code, _headers = reset_url_with_http_info(external_account_id, opts)
      return data
    end

    # Reset Log URL for an Azure External Account
    # This endpoint invalidates the previous URL and generates a new one. The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.
    # @param external_account_id The ID of the external account to reset an Azure log URL for
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalAccountAzure, Fixnum, Hash)>] ExternalAccountAzure data, response status code and response headers
    def reset_url_with_http_info(external_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsAzureApi.reset_url ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountsAzureApi.reset_url" if external_account_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/azure/log_url.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalAccountAzure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsAzureApi#reset_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show an Azure External Account
    # 
    # @param external_account_id The ID of the external account to show an Azure credential for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_account See Including Objects for more information.
    # @return [ExternalAccountAzure]
    def show(external_account_id, opts = {})
      data, _status_code, _headers = show_with_http_info(external_account_id, opts)
      return data
    end

    # Show an Azure External Account
    # 
    # @param external_account_id The ID of the external account to show an Azure credential for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_account See Including Objects for more information.
    # @return [Array<(ExternalAccountAzure, Fixnum, Hash)>] ExternalAccountAzure data, response status code and response headers
    def show_with_http_info(external_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsAzureApi.show ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountsAzureApi.show" if external_account_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/azure.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

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
        :return_type => 'ExternalAccountAzure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsAzureApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an Azure External Account
    #  The related external_account object will be returned with the response.
    # @param external_account_id The ID of the external account to update an Azure credential for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscription_id Azure subscription ID
    # @option opts [String] :client_id Azure client ID
    # @option opts [String] :tenant_id Azure tenant ID
    # @option opts [String] :app_key Azure app key
    # @option opts [String] :name Name
    # @option opts [Integer] :team_id The ID of the team the external account belongs to
    # @return [ExternalAccountAzure]
    def update(external_account_id, opts = {})
      data, _status_code, _headers = update_with_http_info(external_account_id, opts)
      return data
    end

    # Update an Azure External Account
    #  The related external_account object will be returned with the response.
    # @param external_account_id The ID of the external account to update an Azure credential for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscription_id Azure subscription ID
    # @option opts [String] :client_id Azure client ID
    # @option opts [String] :tenant_id Azure tenant ID
    # @option opts [String] :app_key Azure app key
    # @option opts [String] :name Name
    # @option opts [Integer] :team_id The ID of the team the external account belongs to
    # @return [Array<(ExternalAccountAzure, Fixnum, Hash)>] ExternalAccountAzure data, response status code and response headers
    def update_with_http_info(external_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsAzureApi.update ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountsAzureApi.update" if external_account_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/azure.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

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
      form_params["subscription_id"] = opts[:'subscription_id'] if !opts[:'subscription_id'].nil?
      form_params["client_id"] = opts[:'client_id'] if !opts[:'client_id'].nil?
      form_params["tenant_id"] = opts[:'tenant_id'] if !opts[:'tenant_id'].nil?
      form_params["app_key"] = opts[:'app_key'] if !opts[:'app_key'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["team_id"] = opts[:'team_id'] if !opts[:'team_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalAccountAzure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsAzureApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
