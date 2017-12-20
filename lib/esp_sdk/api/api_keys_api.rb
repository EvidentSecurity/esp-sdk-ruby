=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class APIKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a(n) API Key
    # The secret key will only be returned once when the key is first created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the API Key
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [APIKey]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      return data
    end

    # Create a(n) API Key
    # The secret key will only be returned once when the key is first created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the API Key
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [Array<(APIKey, Fixnum, Hash)>] APIKey data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: APIKeysApi.create ..."
      end
      # resource path
      local_var_path = "/api/v2/api_keys.json_api".sub('{format}','json_api')

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
        :return_type => 'APIKey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a(n) API Key
    # 
    # @param id  ID
    # @param [Hash] opts the optional parameters
    # @return [Meta]
    def delete(id, opts = {})
      data, _status_code, _headers = delete_with_http_info(id, opts)
      return data
    end

    # Delete a(n) API Key
    # 
    # @param id  ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Meta, Fixnum, Hash)>] Meta data, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: APIKeysApi.delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling APIKeysApi.delete" if id.nil?
      # resource path
      local_var_path = "/api/v2/api_keys/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Meta')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of API Keys
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page (default to {:number=>1,+:size=>20})
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [PaginatedCollection]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      return data
    end

    # Get a list of API Keys
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: APIKeysApi.list ..."
      end
      # resource path
      local_var_path = "/api/v2/api_keys.json_api".sub('{format}','json_api')

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
        @api_client.config.logger.debug "API called: APIKeysApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single API Key
    # 
    # @param id API Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [APIKey]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single API Key
    # 
    # @param id API Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [Array<(APIKey, Fixnum, Hash)>] APIKey data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: APIKeysApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling APIKeysApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/api_keys/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIKey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a(n) API Key
    # 
    # @param id API Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the API Key
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [APIKey]
    def update(id, opts = {})
      data, _status_code, _headers = update_with_http_info(id, opts)
      return data
    end

    # Update a(n) API Key
    # 
    # @param id API Key ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the API Key
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [Array<(APIKey, Fixnum, Hash)>] APIKey data, response status code and response headers
    def update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: APIKeysApi.update ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling APIKeysApi.update" if id.nil?
      # resource path
      local_var_path = "/api/v2/api_keys/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIKey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: APIKeysApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
