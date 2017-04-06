=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of Tags
    # 
    # @param alert_id The ID of the alert to list tags for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [PaginatedCollection]
    def list(alert_id, opts = {})
      data, _status_code, _headers = list_with_http_info(alert_id, opts)
      return data
    end

    # Get a list of Tags
    # 
    # @param alert_id The ID of the alert to list tags for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :page Page Number
    # @option opts [Hash<String, String>] :filter Filter Params for Searching
    # @option opts [String] :include Included Objects
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(alert_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.list ..."
      end
      # verify the required parameter 'alert_id' is set
      fail ArgumentError, "Missing the required parameter 'alert_id' when calling TagsApi.list" if alert_id.nil?
      # resource path
      local_var_path = "/api/v2/alerts/{alert_id}/tags.json_api".sub('{format}','json').sub('{' + 'alert_id' + '}', alert_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Tag
    # 
    # @param id Tag Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Tag]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Tag
    # 
    # @param id Tag Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Included Objects
    # @return [Array<(Tag, Fixnum, Hash)>] Tag data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TagsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/tags/{id}.json_api".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Tag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
