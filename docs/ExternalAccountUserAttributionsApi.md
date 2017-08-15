# ESP::ExternalAccountUserAttributionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**update**](ExternalAccountUserAttributionsApi.md#update) | **PATCH** /api/v2/external_accounts/{external_account_id}/user_attribution.json_api | A successful call to this API will update the user attributions on an external account.


# **update**
> ExternalAccount update(external_account_id, cloudtrail_name)

A successful call to this API will update the user attributions on an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountUserAttributionsApi.new

external_account_id = 56 # Integer | The ID of the external account to update the user attributions of.

cloudtrail_name = "cloudtrail_name_example" # String | An array of all the signatures to disable on the external account.


begin
  #A successful call to this API will update the user attributions on an external account.
  result = api_instance.update(external_account_id, cloudtrail_name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountUserAttributionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to update the user attributions of. | 
 **cloudtrail_name** | **String**| An array of all the signatures to disable on the external account. | 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



