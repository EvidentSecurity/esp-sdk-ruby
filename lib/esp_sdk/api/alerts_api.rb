=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class AlertsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of Compliance Controls for an Alert
    # 
    # @param alert_id The ID of the alert the compliance controls belong to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. (default to {:number=>1,+:size=>20})
    # @return [PaginatedCollection]
    def list_compliance_controls(alert_id, opts = {})
      data, _status_code, _headers = list_compliance_controls_with_http_info(alert_id, opts)
      return data
    end

    # Get a list of Compliance Controls for an Alert
    # 
    # @param alert_id The ID of the alert the compliance controls belong to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_compliance_controls_with_http_info(alert_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AlertsApi.list_compliance_controls ..."
      end
      # verify the required parameter 'alert_id' is set
      fail ArgumentError, "Missing the required parameter 'alert_id' when calling AlertsApi.list_compliance_controls" if alert_id.nil?
      # resource path
      local_var_path = "/api/v2/alerts/{alert_id}/compliance_controls.json_api".sub('{format}','json_api').sub('{' + 'alert_id' + '}', alert_id.to_s)

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
        @api_client.config.logger.debug "API called: AlertsApi#list_compliance_controls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Custom Compliance Controls for an Alert
    # 
    # @param alert_id The ID of the alert the custom compliance controls belong to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. (default to {:number=>1,+:size=>20})
    # @return [PaginatedCollection]
    def list_custom_compliance_controls(alert_id, opts = {})
      data, _status_code, _headers = list_custom_compliance_controls_with_http_info(alert_id, opts)
      return data
    end

    # Get a list of Custom Compliance Controls for an Alert
    # 
    # @param alert_id The ID of the alert the custom compliance controls belong to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information.
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_custom_compliance_controls_with_http_info(alert_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AlertsApi.list_custom_compliance_controls ..."
      end
      # verify the required parameter 'alert_id' is set
      fail ArgumentError, "Missing the required parameter 'alert_id' when calling AlertsApi.list_custom_compliance_controls" if alert_id.nil?
      # resource path
      local_var_path = "/api/v2/alerts/{alert_id}/custom_compliance_controls.json_api".sub('{format}','json_api').sub('{' + 'alert_id' + '}', alert_id.to_s)

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
        @api_client.config.logger.debug "API called: AlertsApi#list_custom_compliance_controls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of Alerts for a Report
    # 
    # @param report_id ID of the Report to Return Alerts For
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls, custom_compliance_controls See Including Objects for more information.
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attribute: [id]  Limited Searchable Attributes: [signature_service_id_in, signature_risk_level_in, risk_level_in, risk_level_eq, resource_or_tag_cont, suppressed, not_suppressed, signature_name_cont, signature_identifier_cont, external_account_id_in, external_account_id_eq, external_account_team_id_in, external_account_team_id_eq, external_account_organization_id_in, external_account_organization_id_eq, region_id_in, region_id_eq, status_in, status_eq, attribution_present, cloud_trail_events_present, open_as_of, signature_id_in, signature_id_eq, external_account_provider_eq, compliance_control_id_eq, custom_compliance_control_id_eq]  
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. (default to {:number=>1,+:size=>20})
    # @return [PaginatedCollection]
    def list_for_report(report_id, opts = {})
      data, _status_code, _headers = list_for_report_with_http_info(report_id, opts)
      return data
    end

    # Get a list of Alerts for a Report
    # 
    # @param report_id ID of the Report to Return Alerts For
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls, custom_compliance_controls See Including Objects for more information.
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attribute: [id]  Limited Searchable Attributes: [signature_service_id_in, signature_risk_level_in, risk_level_in, risk_level_eq, resource_or_tag_cont, suppressed, not_suppressed, signature_name_cont, signature_identifier_cont, external_account_id_in, external_account_id_eq, external_account_team_id_in, external_account_team_id_eq, external_account_organization_id_in, external_account_organization_id_eq, region_id_in, region_id_eq, status_in, status_eq, attribution_present, cloud_trail_events_present, open_as_of, signature_id_in, signature_id_eq, external_account_provider_eq, compliance_control_id_eq, custom_compliance_control_id_eq]  
    # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_for_report_with_http_info(report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AlertsApi.list_for_report ..."
      end
      # verify the required parameter 'report_id' is set
      fail ArgumentError, "Missing the required parameter 'report_id' when calling AlertsApi.list_for_report" if report_id.nil?
      # resource path
      local_var_path = "/api/v2/reports/{report_id}/alerts.json_api".sub('{format}','json_api').sub('{' + 'report_id' + '}', report_id.to_s)

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
        @api_client.config.logger.debug "API called: AlertsApi#list_for_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Alert
    # 
    # @param id Alert ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls, custom_compliance_controls See Including Objects for more information.
    # @return [Alert]
    def show(id, opts = {})
      data, _status_code, _headers = show_with_http_info(id, opts)
      return data
    end

    # Show a single Alert
    # 
    # @param id Alert ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls, custom_compliance_controls See Including Objects for more information.
    # @return [Array<(Alert, Fixnum, Hash)>] Alert data, response status code and response headers
    def show_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AlertsApi.show ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AlertsApi.show" if id.nil?
      # resource path
      local_var_path = "/api/v2/alerts/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Alert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlertsApi#show\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
