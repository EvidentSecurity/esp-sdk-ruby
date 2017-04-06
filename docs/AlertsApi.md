# ESP::AlertsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](AlertsApi.md#list) | **PUT** /api/v2/reports/{report_id}/alerts.json_api | Get a list of Alerts
[**show**](AlertsApi.md#show) | **GET** /api/v2/alerts/{id}.json_api | Show a single Alert


# **list**
> PaginatedCollection list(report_id, opts)

Get a list of Alerts

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

report_id = 56 # Integer | Id of the Report to Return Alerts For

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example", # String | Included Objects
  region_id: 56, # Integer | Return only alerts for this region.
  status: "status_example", # String | Return only alerts for the give status(es). Valid values are fail, warn, error, pass, info
  first_seen: 56, # Integer | Return only alerts that have started within a number of hours of the report. For example, first_seen of 3 will return alerts that started showing up within the last 3 hours of the report.
  suppressed: true, # BOOLEAN | Return only suppressed alerts
  team_id: 56, # Integer | Return only alerts for the given team.
  external_account_id: 56, # Integer | Return only alerts for the given external id.
  service_id: 56, # Integer | Return only alerts on signatures with the given service.
  signature_severity: "signature_severity_example", # String | Return only alerts for signatures with the given risk_level. Valid values are Low, Medium, High
  signature_name: "signature_name_example", # String | Return only alerts for signatures with the given name.
  resource: "resource_example", # String | Return only alerts for the given resource or tag.
  signature_identifier: "signature_identifier_example" # String | Return only alerts for signatures with the given identifier.
}

begin
  #Get a list of Alerts
  result = api_instance.list(report_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AlertsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **Integer**| Id of the Report to Return Alerts For | 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching | [optional] 
 **include** | **String**| Included Objects | [optional] 
 **region_id** | **Integer**| Return only alerts for this region. | [optional] 
 **status** | **String**| Return only alerts for the give status(es). Valid values are fail, warn, error, pass, info | [optional] 
 **first_seen** | **Integer**| Return only alerts that have started within a number of hours of the report. For example, first_seen of 3 will return alerts that started showing up within the last 3 hours of the report. | [optional] 
 **suppressed** | **BOOLEAN**| Return only suppressed alerts | [optional] 
 **team_id** | **Integer**| Return only alerts for the given team. | [optional] 
 **external_account_id** | **Integer**| Return only alerts for the given external id. | [optional] 
 **service_id** | **Integer**| Return only alerts on signatures with the given service. | [optional] 
 **signature_severity** | **String**| Return only alerts for signatures with the given risk_level. Valid values are Low, Medium, High | [optional] 
 **signature_name** | **String**| Return only alerts for signatures with the given name. | [optional] 
 **resource** | **String**| Return only alerts for the given resource or tag. | [optional] 
 **signature_identifier** | **String**| Return only alerts for signatures with the given identifier. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **show**
> Alert show(id, opts)

Show a single Alert

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

id = 56 # Integer | Alert Id

opts = { 
  include: "include_example" # String | Included Objects
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
 **id** | **Integer**| Alert Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Alert**](Alert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



