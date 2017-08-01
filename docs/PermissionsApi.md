# ESP::PermissionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](PermissionsApi.md#list) | **GET** /api/v2/permissions.json_api | This API provides a list of all the permissions that the current user has


# **list**
> Array&lt;UserPermission&gt; list

This API provides a list of all the permissions that the current user has

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::PermissionsApi.new

begin
  #This API provides a list of all the permissions that the current user has
  result = api_instance.list
  p result
rescue ESP::ApiError => e
  puts "Exception when calling PermissionsApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;UserPermission&gt;**](UserPermission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



