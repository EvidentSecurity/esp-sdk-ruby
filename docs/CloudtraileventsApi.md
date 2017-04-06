# ESP::CloudTrailEventsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CloudTrailEventsApi.md#list) | **GET** /api/v2/alerts/{alert_id}/cloud_trail_events.json_api | Get a list of Cloud Trail Events
[**show**](CloudTrailEventsApi.md#show) | **GET** /api/v2/cloud_trail_events/{id}.json_api | Show a single Cloud Trail Event


# **list**
> PaginatedCollection list(alert_id, opts)

Get a list of Cloud Trail Events

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CloudTrailEventsApi.new

alert_id = 56 # Integer | The ID of the alert to retrieve cloud trail events for

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Cloud Trail Events
  result = api_instance.list(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CloudTrailEventsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert to retrieve cloud trail events for | 
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
> CloudTrailEvent show(id, opts)

Show a single Cloud Trail Event

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CloudTrailEventsApi.new

id = 56 # Integer | Cloud Trail Event Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Cloud Trail Event
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CloudTrailEventsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Cloud Trail Event Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**CloudTrailEvent**](CloudTrailEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



