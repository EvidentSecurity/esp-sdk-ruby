# ESP::SubscriptionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**show**](SubscriptionsApi.md#show) | **GET** /api/v2/subscriptions/{id}.json_api | Show a single Subscription


# **show**
> Subscription show(id, opts)

Show a single Subscription



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubscriptionsApi.new

id = 56 # Integer | Subscription ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, plan See Including Objects for more information.
}

begin
  #Show a single Subscription
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubscriptionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Subscription ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, plan See Including Objects for more information. | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



