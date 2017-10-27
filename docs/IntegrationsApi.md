# ESP::IntegrationsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**show**](IntegrationsApi.md#show) | **GET** /api/v2/integrations/{id}.json_api | Show a single Integration


# **show**
> Integration show(id, opts)

Show a single Integration

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsApi.new

id = 56 # Integer | Integration ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single Integration
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Integration ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Integration**](Integration.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



