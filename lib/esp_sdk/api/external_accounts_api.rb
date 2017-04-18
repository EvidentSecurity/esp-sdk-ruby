=begin
#ESP Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class ExternalAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Show the latest completed report for an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def api_v2_external_accounts_id_complete_json_api_patch(id, opts = {})
      api_v2_external_accounts_id_complete_json_api_patch_with_http_info(id, opts)
      return nil
    end

    # Show the latest completed report for an External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def api_v2_external_accounts_id_complete_json_api_patch_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.api_v2_external_accounts_id_complete_json_api_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalAccountsApi.api_v2_external_accounts_id_complete_json_api_patch" if id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{id}/complete.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#api_v2_external_accounts_id_complete_json_api_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a list of Subscribed Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def api_v2_external_accounts_subscribed_accounts_json_api_get(opts = {})
      api_v2_external_accounts_subscribed_accounts_json_api_get_with_http_info(opts)
      return nil
    end

    # Show a list of Subscribed Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def api_v2_external_accounts_subscribed_accounts_json_api_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.api_v2_external_accounts_subscribed_accounts_json_api_get ..."
      end
      # resource path
      local_var_path = "/api/v2/external_accounts/subscribed_accounts.json_api".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#api_v2_external_accounts_subscribed_accounts_json_api_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a(n) External Account
    # 
    # @param team_id Team Id
    # @param arn ARN
    # @param external_id External Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @return [ExternalAccount]
    def create(team_id, arn, external_id, opts = {})
      data, _status_code, _headers = create_with_http_info(team_id, arn, external_id, opts)
      return data
    end

    # Create a(n) External Account
    # 
    # @param team_id Team Id
    # @param arn ARN
    # @param external_id External Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @return [Array<(ExternalAccount, Fixnum, Hash)>] ExternalAccount data, response status code and response headers
    def create_with_http_info(team_id, arn, external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.create ..."
      end
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling ExternalAccountsApi.create" if team_id.nil?
      # verify the required parameter 'arn' is set
      fail ArgumentError, "Missing the required parameter 'arn' when calling ExternalAccountsApi.create" if arn.nil?
      # verify the required parameter 'external_id' is set
      fail ArgumentError, "Missing the required parameter 'external_id' when calling ExternalAccountsApi.create" if external_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts.json_api".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["team_id"] = team_id
      form_params["arn"] = arn
      form_params["external_id"] = external_id
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a(n) External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def destroy(id, opts = {})
      data, _status_code, _headers = destroy_with_http_info(id, opts)
      return data
    end

    # Remove a(n) External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def destroy_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.destroy ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalAccountsApi.destroy" if id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of External Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [PaginatedCollection]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return data
    end

    # Get a list of External Accounts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.list ..."
      end
      # resource path
      local_var_path = "/api/v2/external_accounts.json_api".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["page"] = opts[:'page'] if !opts[:'page'].nil?
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [ExternalAccount]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single External Account
    # 
    # @param id External Account Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Array<(ExternalAccount, Fixnum, Hash)>] ExternalAccount data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalAccountsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}

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
        :return_type => 'ExternalAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) External Account
    # 
    # @param id External Account Id
    # @param arn ARN
    # @param external_id External Id
    # @param sub_organization_id Sub Organization Id
    # @param team_id Team Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @return [ExternalAccount]
    def update(id, arn, external_id, sub_organization_id, team_id, opts = {})
      data, _status_code, _headers = update_with_http_info(id, arn, external_id, sub_organization_id, team_id, opts)
      return data
    end

    # Update a(n) External Account
    # 
    # @param id External Account Id
    # @param arn ARN
    # @param external_id External Id
    # @param sub_organization_id Sub Organization Id
    # @param team_id Team Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Name
    # @return [Array<(ExternalAccount, Fixnum, Hash)>] ExternalAccount data, response status code and response headers
    def update_with_http_info(id, arn, external_id, sub_organization_id, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountsApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ExternalAccountsApi.update" if id.nil?
      # verify the required parameter 'arn' is set
      fail ArgumentError, "Missing the required parameter 'arn' when calling ExternalAccountsApi.update" if arn.nil?
      # verify the required parameter 'external_id' is set
      fail ArgumentError, "Missing the required parameter 'external_id' when calling ExternalAccountsApi.update" if external_id.nil?
      # verify the required parameter 'sub_organization_id' is set
      fail ArgumentError, "Missing the required parameter 'sub_organization_id' when calling ExternalAccountsApi.update" if sub_organization_id.nil?
      # verify the required parameter 'team_id' is set
      fail ArgumentError, "Missing the required parameter 'team_id' when calling ExternalAccountsApi.update" if team_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params["arn"] = arn
      form_params["external_id"] = external_id
      form_params["sub_organization_id"] = sub_organization_id
      form_params["team_id"] = team_id
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end