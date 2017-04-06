# ESP::SignatureSuppressionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_signature_suppression**](SignatureSuppressionsApi.md#create_signature_suppression) | **POST** /api/v2/suppressions/signatures.json_api | A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.


# **create_signature_suppression**
> create_signature_suppression(regions, external_account_ids, reason, resource, opts)

A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureSuppressionsApi.new

regions = ["regions_example"] # Array<String> | An array of region names to suppress

external_account_ids = [56] # Array<Integer> | An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on

reason = "reason_example" # String | The reason for creating the suppression

resource = "resource_example" # String | The resource string this suppression will suppress alerts for

opts = { 
  signature_ids: [56], # Array<Integer> | An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank
  custom_signature_ids: [56] # Array<Integer> | An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank
}

begin
  #A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.
  api_instance.create_signature_suppression(regions, external_account_ids, reason, resource, opts)
rescue ESP::ApiError => e
  puts "Exception when calling SignatureSuppressionsApi->create_signature_suppression: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regions** | [**Array&lt;String&gt;**](String.md)| An array of region names to suppress | 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on | 
 **reason** | **String**| The reason for creating the suppression | 
 **resource** | **String**| The resource string this suppression will suppress alerts for | 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



