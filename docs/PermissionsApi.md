# ESP::PermissionsApi

All URIs are relative to https://api.evident.io

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

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



