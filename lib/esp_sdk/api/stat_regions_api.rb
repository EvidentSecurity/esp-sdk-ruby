=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class StatRegionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of stats for regions
    # A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # @param stat_id The ID of the stat to retrieve region stats for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page (default to {:number=>1,+:size=>20})
    # @option opts [String] :include Related objects that can be included in the response:  region, stat See Including Objects for more information.
    # @return [PaginatedCollection]
    def list_for_stat(stat_id, opts = {})
      data, _status_code, _headers = list_for_stat_with_http_info(stat_id, opts)
      return data
    end

    # Get a list of stats for regions
    # A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # @param stat_id The ID of the stat to retrieve region stats for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
    # @option opts [String] :include Related objects that can be included in the response:  region, stat See Including Objects for more information.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_for_stat_with_http_info(stat_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatRegionsApi.list_for_stat ..."
      end
      # verify the required parameter 'stat_id' is set
      fail ArgumentError, "Missing the required parameter 'stat_id' when calling StatRegionsApi.list_for_stat" if stat_id.nil?
      # resource path
      local_var_path = "/api/v2/stats/{stat_id}/regions.json_api".sub('{format}','json_api').sub('{' + 'stat_id' + '}', stat_id.to_s)

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
        @api_client.config.logger.debug "API called: StatRegionsApi#list_for_stat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Stat Region
    # 
    # @param id Stat Region ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  region, stat See Including Objects for more information.
    # @return [StatRegion]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Stat Region
    # 
    # @param id Stat Region ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  region, stat See Including Objects for more information.
    # @return [Array<(StatRegion, Fixnum, Hash)>] StatRegion data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatRegionsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StatRegionsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/stats/regions/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'StatRegion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatRegionsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
