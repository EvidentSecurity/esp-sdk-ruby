# ESP::AttributionApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**show**](AttributionApi.md#show) | **GET** /api/v2/alerts/{alert_id}/attribution.json_api | Show the attribution for an alert


# **show**
> Attribution show(alert_id, opts)

Show the attribution for an alert



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AttributionApi.new

alert_id = 56 # Integer | The ID of the alert to retrieve user attribution for

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  alert See Including Objects for more information.
}

begin
  #Show the attribution for an alert
  result = api_instance.show(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AttributionApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert to retrieve user attribution for | 
 **include** | **String**| Related objects that can be included in the response:  alert See Including Objects for more information. | [optional] 

### Return type

[**Attribution**](Attribution.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



