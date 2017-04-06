# ESP::RegionSuppressionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_region_suppression**](RegionSuppressionsApi.md#create_region_suppression) | **POST** /api/v2/suppressions/regions.json_api | A successful call to this API creates a new region suppression for the supplied regions . The body of the request must contain a json api compliant hash of attributes with type suppression/regions.


# **create_region_suppression**
> create_region_suppression(regions, external_account_ids, reason, resource)

A successful call to this API creates a new region suppression for the supplied regions . The body of the request must contain a json api compliant hash of attributes with type suppression/regions.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::RegionSuppressionsApi.new

regions = ["regions_example"] # Array<String> | An array of region names to suppress

external_account_ids = [56] # Array<Integer> | An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on

reason = "reason_example" # String | The reason for creating the suppression

resource = "resource_example" # String | The resource string this suppression will suppress alerts for


begin
  #A successful call to this API creates a new region suppression for the supplied regions . The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
  api_instance.create_region_suppression(regions, external_account_ids, reason, resource)
rescue ESP::ApiError => e
  puts "Exception when calling RegionSuppressionsApi->create_region_suppression: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regions** | [**Array&lt;String&gt;**](String.md)| An array of region names to suppress | 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on | 
 **reason** | **String**| The reason for creating the suppression | 
 **resource** | **String**| The resource string this suppression will suppress alerts for | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



