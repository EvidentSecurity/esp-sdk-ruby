=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class StatsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Stats for a report
    # A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # @param report_id The ID of the report to retrieve stats for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
    # @return [Stat]
    def for_report(report_id, opts = {})
      data, _status_code, _headers = for_report_with_http_info(report_id, opts)
      return data
    end

    # Stats for a report
    # A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
    # @param report_id The ID of the report to retrieve stats for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
    # @return [Array<(Stat, Fixnum, Hash)>] Stat data, response status code and response headers
    def for_report_with_http_info(report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatsApi.for_report ..."
      end
      # verify the required parameter 'report_id' is set
      fail ArgumentError, "Missing the required parameter 'report_id' when calling StatsApi.for_report" if report_id.nil?
      # resource path
      local_var_path = "/api/v2/reports/{report_id}/stats.json_api".sub('{format}','json_api').sub('{' + 'report_id' + '}', report_id.to_s)

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
        :return_type => 'Stat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsApi#for_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stats for teams
    # A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.      Searchable Association: [report] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page (default to {:number=>1,+:size=>20})
    # @option opts [String] :include Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
    # @return [PaginatedCollection]
    def latest_for_teams(opts = {})
      data, _status_code, _headers = latest_for_teams_with_http_info(opts)
      return data
    end

    # Stats for teams
    # A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.      Searchable Association: [report] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
    # @option opts [String] :include Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def latest_for_teams_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatsApi.latest_for_teams ..."
      end
      # resource path
      local_var_path = "/api/v2/stats/latest_for_teams.json_api".sub('{format}','json_api')

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
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?
      form_params["page"] = opts[:'page'] if !opts[:'page'].nil?

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
        @api_client.config.logger.debug "API called: StatsApi#latest_for_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Stat
    # 
    # @param id Stat ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
    # @return [Stat]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Stat
    # 
    # @param id Stat ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
    # @return [Array<(Stat, Fixnum, Hash)>] Stat data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StatsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/stats/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Stat')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
