# ESP::ReportExportApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_file**](ReportExportApi.md#request_file) | **POST** /api/v2/reports/export/files.json_api | Export all alerts for a set of reports to a file
[**send_to_integration**](ReportExportApi.md#send_to_integration) | **POST** /api/v2/reports/export/integrations.json_api | Export all alerts on reports to an integration
[**show_file_details**](ReportExportApi.md#show_file_details) | **GET** /api/v2/reports/export/files/{id}.json_api | Show a single Exported Report


# **request_file**
> ExportedReport request_file(report_ids, requested_format, opts)

Export all alerts for a set of reports to a file

<p>An email will be sent to the calling user once the file is ready for download.</p> <p>The URL and filename attributes will be blank on create. When exporting is complete these attributes will be filled in and can be viewed using the show action.</p>

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportExportApi.new

report_ids = [56] # Array<Integer> | An array of report IDs to export alerts for

requested_format = "requested_format_example" # String | The file format of the export. Valid values are csv, json, pdf

opts = { 
  filter: {'key' => "filter_example"} # Hash<String, String> | Params used to filter the alerts that will be exported
}

begin
  #Export all alerts for a set of reports to a file
  result = api_instance.request_file(report_ids, requested_format, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportExportApi->request_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of report IDs to export alerts for | 
 **requested_format** | **String**| The file format of the export. Valid values are csv, json, pdf | 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Params used to filter the alerts that will be exported | [optional] 

### Return type

[**ExportedReport**](ExportedReport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **send_to_integration**
> Meta send_to_integration(integration_id, report_ids, opts)

Export all alerts on reports to an integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportExportApi.new

integration_id = 56 # Integer | The ID of the integration to send the alerts to

report_ids = [56] # Array<Integer> | An array of report IDs

opts = { 
  filter: {'key' => "filter_example"} # Hash<String, String> | Params used to filter the alerts that will be exported
}

begin
  #Export all alerts on reports to an integration
  result = api_instance.send_to_integration(integration_id, report_ids, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportExportApi->send_to_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration to send the alerts to | 
 **report_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of report IDs | 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Params used to filter the alerts that will be exported | [optional] 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_file_details**
> ExportedReport show_file_details(id)

Show a single Exported Report

The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportExportApi.new

id = 56 # Integer | Exported Report ID


begin
  #Show a single Exported Report
  result = api_instance.show_file_details(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportExportApi->show_file_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Exported Report ID | 

### Return type

[**ExportedReport**](ExportedReport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



