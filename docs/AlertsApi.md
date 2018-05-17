# ESP::AlertsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_compliance_controls**](AlertsApi.md#list_compliance_controls) | **GET** /api/v2/alerts/{alert_id}/compliance_controls.json_api | Get a list of Compliance Controls for an Alert
[**list_custom_compliance_controls**](AlertsApi.md#list_custom_compliance_controls) | **GET** /api/v2/alerts/{alert_id}/custom_compliance_controls.json_api | Get a list of Custom Compliance Controls for an Alert
[**list_for_report**](AlertsApi.md#list_for_report) | **PUT** /api/v2/reports/{report_id}/alerts.json_api | Get a list of Alerts for a Report
[**show**](AlertsApi.md#show) | **GET** /api/v2/alerts/{id}.json_api | Show a single Alert


# **list_compliance_controls**
> PaginatedCollection list_compliance_controls(alert_id, opts)

Get a list of Compliance Controls for an Alert



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

alert_id = 56 # Integer | The ID of the alert the compliance controls belong to

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of Compliance Controls for an Alert
  result = api_instance.list_compliance_controls(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AlertsApi->list_compliance_controls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert the compliance controls belong to | 
 **include** | **String**| Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_custom_compliance_controls**
> PaginatedCollection list_custom_compliance_controls(alert_id, opts)

Get a list of Custom Compliance Controls for an Alert



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

alert_id = 56 # Integer | The ID of the alert the custom compliance controls belong to

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of Custom Compliance Controls for an Alert
  result = api_instance.list_custom_compliance_controls(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AlertsApi->list_custom_compliance_controls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert the custom compliance controls belong to | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_for_report**
> PaginatedCollection list_for_report(report_id, opts)

Get a list of Alerts for a Report



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

report_id = 56 # Integer | ID of the Report to Return Alerts For

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attribute: [id]  Limited Searchable Attributes: [signature_service_id_in, signature_risk_level_in, risk_level_in, risk_level_eq, resource_or_tag_cont, suppressed, not_suppressed, signature_name_cont, signature_identifier_cont, external_account_id_in, external_account_id_eq, external_account_team_id_in, external_account_team_id_eq, external_account_organization_id_in, external_account_organization_id_eq, region_id_in, region_id_eq, status_in, status_eq, attribution_present, cloud_trail_events_present, open_as_of, signature_id_in, signature_id_eq, external_account_provider_eq, compliance_control_id_eq, custom_compliance_control_id_eq]  
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of Alerts for a Report
  result = api_instance.list_for_report(report_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AlertsApi->list_for_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **Integer**| ID of the Report to Return Alerts For | 
 **include** | **String**| Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attribute: [id]  Limited Searchable Attributes: [signature_service_id_in, signature_risk_level_in, risk_level_in, risk_level_eq, resource_or_tag_cont, suppressed, not_suppressed, signature_name_cont, signature_identifier_cont, external_account_id_in, external_account_id_eq, external_account_team_id_in, external_account_team_id_eq, external_account_organization_id_in, external_account_organization_id_eq, region_id_in, region_id_eq, status_in, status_eq, attribution_present, cloud_trail_events_present, open_as_of, signature_id_in, signature_id_eq, external_account_provider_eq, compliance_control_id_eq, custom_compliance_control_id_eq]   | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Alert show(id, opts)

Show a single Alert



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

id = 56 # Integer | Alert ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls See Including Objects for more information.
}

begin
  #Show a single Alert
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AlertsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Alert ID | 
 **include** | **String**| Related objects that can be included in the response:  external_account, region, signature, custom_signature, suppression, metadata, attribution, cloud_trail_events, tags, compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**Alert**](Alert.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



