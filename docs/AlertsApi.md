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
  include: "include_example" # String | Included Objects
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



