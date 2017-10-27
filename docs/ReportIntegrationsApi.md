# ESP::ReportIntegrationsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReportIntegrationsApi.md#create) | **POST** /api/v2/reports/export/integrations.json_api | Export all alerts on reports to an integration


# **create**
> Meta create(report_ids, integration_id)

Export all alerts on reports to an integration

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportIntegrationsApi.new

report_ids = [56] # Array<Integer> | An array of report IDs

integration_id = 56 # Integer | The ID of the integration to send the alerts to


begin
  #Export all alerts on reports to an integration
  result = api_instance.create(report_ids, integration_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportIntegrationsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of report IDs | 
 **integration_id** | **Integer**| The ID of the integration to send the alerts to | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



