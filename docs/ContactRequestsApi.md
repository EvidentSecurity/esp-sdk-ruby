# ESP::ContactRequestsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ContactRequestsApi.md#create) | **POST** /api/v2/contact_requests.json_api | Create a(n) Contact Request


# **create**
> ContactRequest create(title, description, request_type)

Create a(n) Contact Request

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ContactRequestsApi.new

title = "title_example" # String | Subject of your message

description = "description_example" # String | Body of your message

request_type = "request_type_example" # String | Type of contact request. Supported values are support for support requests and feature for a feature request


begin
  #Create a(n) Contact Request
  result = api_instance.create(title, description, request_type)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ContactRequestsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| Subject of your message | 
 **description** | **String**| Body of your message | 
 **request_type** | **String**| Type of contact request. Supported values are support for support requests and feature for a feature request | 

### Return type

[**ContactRequest**](ContactRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



