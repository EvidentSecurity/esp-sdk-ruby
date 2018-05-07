# ESP::ContactRequestsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContactRequestsApi.md#create) | **POST** /api/v2/contact_requests.json_api | Create a(n) Contact Request


# **create**
> ContactRequest create(description, request_type, title, opts)

Create a(n) Contact Request



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ContactRequestsApi.new

description = "description_example" # String | Body of your message

request_type = "request_type_example" # String | Type of contact request. Valid values are support, feature

title = "title_example" # String | Subject of your message

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  user See Including Objects for more information.
}

begin
  #Create a(n) Contact Request
  result = api_instance.create(description, request_type, title, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ContactRequestsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| Body of your message | 
 **request_type** | **String**| Type of contact request. Valid values are support, feature | 
 **title** | **String**| Subject of your message | 
 **include** | **String**| Related objects that can be included in the response:  user See Including Objects for more information. | [optional] 

### Return type

[**ContactRequest**](ContactRequest.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



