=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class ReportExportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Export all alerts for a set of reports to a file
    # <p>An email will be sent to the calling user once the file is ready for download.</p> <p>The URL and filename attributes will be blank on create. When exporting is complete these attributes will be filled in and can be viewed using the show action.</p>
    # @param requested_format The file format of the export. Valid values are csv, json, pdf
    # @param report_ids An array of report IDs to export alerts for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [ExportedReport]
    def request_file(requested_format, report_ids, opts = {})
      data, _status_code, _headers = request_file_with_http_info(requested_format, report_ids, opts)
      return data
    end

    # Export all alerts for a set of reports to a file
    # &lt;p&gt;An email will be sent to the calling user once the file is ready for download.&lt;/p&gt; &lt;p&gt;The URL and filename attributes will be blank on create. When exporting is complete these attributes will be filled in and can be viewed using the show action.&lt;/p&gt;
    # @param requested_format The file format of the export. Valid values are csv, json, pdf
    # @param report_ids An array of report IDs to export alerts for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [Array<(ExportedReport, Fixnum, Hash)>] ExportedReport data, response status code and response headers
    def request_file_with_http_info(requested_format, report_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportExportApi.request_file ..."
      end
      # verify the required parameter 'requested_format' is set
      fail ArgumentError, "Missing the required parameter 'requested_format' when calling ReportExportApi.request_file" if requested_format.nil?
      # verify enum value
      unless ['csv', 'json', 'pdf'].include?(requested_format)
        fail ArgumentError, "invalid value for 'requested_format', must be one of csv, json, pdf"
      end
      # verify the required parameter 'report_ids' is set
      fail ArgumentError, "Missing the required parameter 'report_ids' when calling ReportExportApi.request_file" if report_ids.nil?
      # resource path
      local_var_path = "/api/v2/reports/export/files.json_api".sub('{format}','json_api')

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
      form_params["requested_format"] = requested_format
      form_params["report_ids"] = @api_client.build_collection_param(report_ids, :multi)
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExportedReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExportApi#request_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export all alerts on reports to an integration
    # 
    # @param report_ids An array of report IDs
    # @param integration_id The ID of the integration to send the alerts to
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @return [Meta]
    def send_to_integration(report_ids, integration_id, opts = {})
      data, _status_code, _headers = send_to_integration_with_http_info(report_ids, integration_id, opts)
      return data
    end

    # Export all alerts on reports to an integration
    # 
    # @param report_ids An array of report IDs
    # @param integration_id The ID of the integration to send the alerts to
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
    # @return [Array<(Meta, Fixnum, Hash)>] Meta data, response status code and response headers
    def send_to_integration_with_http_info(report_ids, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportExportApi.send_to_integration ..."
      end
      # verify the required parameter 'report_ids' is set
      fail ArgumentError, "Missing the required parameter 'report_ids' when calling ReportExportApi.send_to_integration" if report_ids.nil?
      # verify the required parameter 'integration_id' is set
      fail ArgumentError, "Missing the required parameter 'integration_id' when calling ReportExportApi.send_to_integration" if integration_id.nil?
      # resource path
      local_var_path = "/api/v2/reports/export/integrations.json_api".sub('{format}','json_api')

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
      form_params["report_ids"] = @api_client.build_collection_param(report_ids, :multi)
      form_params["integration_id"] = integration_id
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Meta')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExportApi#send_to_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show a single Exported Report
    # The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.
    # @param id Exported Report ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [ExportedReport]
    def show_file_details(id, opts = {})
      data, _status_code, _headers = show_file_details_with_http_info(id, opts)
      return data
    end

    # Show a single Exported Report
    # The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.
    # @param id Exported Report ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Related objects that can be included in the response:  user See Including Objects for more information.
    # @return [Array<(ExportedReport, Fixnum, Hash)>] ExportedReport data, response status code and response headers
    def show_file_details_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportExportApi.show_file_details ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ReportExportApi.show_file_details" if id.nil?
      # resource path
      local_var_path = "/api/v2/reports/export/files/{id}.json_api".sub('{format}','json_api').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ExportedReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportExportApi#show_file_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
