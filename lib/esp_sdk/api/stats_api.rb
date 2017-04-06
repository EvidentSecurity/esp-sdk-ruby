=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class StatsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # 
    # @param report_id The ID of the report to retrieve stats for
    # @param [Hash] opts the optional parameters
    # @return [Stat]
    def for_report(report_id, opts = {})
      data, _status_code, _headers = for_report_with_http_info(report_id, opts)
      return data
    end

    # A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # 
    # @param report_id The ID of the report to retrieve stats for
    # @param [Hash] opts the optional parameters
    # @return [Array<(Stat, Fixnum, Hash)>] Stat data, response status code and response headers
    def for_report_with_http_info(report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatsApi.for_report ..."
      end
      # verify the required parameter 'report_id' is set
      fail ArgumentError, "Missing the required parameter 'report_id' when calling StatsApi.for_report" if report_id.nil?
      # resource path
      local_var_path = "/api/v2/reports/{report_id}/stats.json_api".sub('{format}','json').sub('{' + 'report_id' + '}', report_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'Stat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsApi#for_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
    # 
    # @param [Hash] opts the optional parameters
    # @return [PaginatedCollection]
    def latest_for_teams(opts = {})
      data, _status_code, _headers = latest_for_teams_with_http_info(opts)
      return data
    end

    # A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def latest_for_teams_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatsApi.latest_for_teams ..."
      end
      # resource path
      local_var_path = "/api/v2/stats/latest_for_teams.json_api".sub('{format}','json')

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
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsApi#latest_for_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
