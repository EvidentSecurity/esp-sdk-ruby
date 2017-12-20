# ESP::CloudTrailEventsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_for_alert**](CloudTrailEventsApi.md#list_for_alert) | **GET** /api/v2/alerts/{alert_id}/cloud_trail_events.json_api | Get a list of Cloud Trail Events
[**show**](CloudTrailEventsApi.md#show) | **GET** /api/v2/cloud_trail_events/{id}.json_api | Show a single Cloud Trail Event


# **list_for_alert**
> PaginatedCollection list_for_alert(alert_id, opts)

Get a list of Cloud Trail Events



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CloudTrailEventsApi.new

alert_id = 56 # Integer | The ID of the alert to retrieve cloud trail events for

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Get a list of Cloud Trail Events
  result = api_instance.list_for_alert(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CloudTrailEventsApi->list_for_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert to retrieve cloud trail events for | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> CloudTrailEvent show(id, opts)

Show a single Cloud Trail Event



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CloudTrailEventsApi.new

id = 56 # Integer | Cloud Trail Event ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
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
 **id** | **Integer**| Cloud Trail Event ID | 
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**CloudTrailEvent**](CloudTrailEvent.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



