# ESP::CloudTrailEventsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CloudTrailEventsApi.md#list) | **GET** /api/v2/alerts/{alert_id}/cloud_trail_events.json_api | Get a list of CloudTrailEvents
[**show**](CloudTrailEventsApi.md#show) | **GET** /api/v2/cloud_trail_events/{id}.json_api | Show a single CloudTrailEvent


# **list**
> PaginatedCollection list(alert_id, opts)

Get a list of CloudTrailEvents

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CloudTrailEventsApi.new

alert_id = 56 # Integer | The ID of the alert to retrieve cloud trail events for

opts = { 
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of CloudTrailEvents
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
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> CloudTrailEvent show(id)

Show a single CloudTrailEvent

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CloudTrailEventsApi.new

id = 56 # Integer | CloudTrailEvent ID


begin
  #Show a single CloudTrailEvent
  result = api_instance.show(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CloudTrailEventsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CloudTrailEvent ID | 

### Return type

[**CloudTrailEvent**](CloudTrailEvent.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



