# ESP::TimeZonesApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TimeZonesApi.md#list) | **GET** /api/v2/time_zones.json_api | A successful call to this API returns a list of time zones.


# **list**
> Array&lt;TimeZone&gt; list

A successful call to this API returns a list of time zones.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TimeZonesApi.new

begin
  #A successful call to this API returns a list of time zones.
  result = api_instance.list
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TimeZonesApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TimeZone&gt;**](TimeZone.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/json



