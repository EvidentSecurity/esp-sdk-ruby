# ESP::ExternalAccountUserAttributionChannelsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalAccountUserAttributionChannelsApi.md#create) | **POST** /api/v2/external_accounts/{external_account_id}/user_attribution/channel.json_api | A successful call to this API will create a User Attribution Channel for an external account.
[**destroy**](ExternalAccountUserAttributionChannelsApi.md#destroy) | **DELETE** /api/v2/external_accounts/{external_account_id}/user_attribution/channel.json_api | A successful call to this API will remove the User Attribution Channel for an external account.
[**show**](ExternalAccountUserAttributionChannelsApi.md#show) | **GET** /api/v2/external_accounts/{external_account_id}/user_attribution/channel.json_api | A successful call to this API will show the User Attribution Channel of an external account.


# **create**
> Channel create(external_account_id)

A successful call to this API will create a User Attribution Channel for an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountUserAttributionChannelsApi.new

external_account_id = 56 # Integer | The ID of the external account to create a User Attribution Channel for


begin
  #A successful call to this API will create a User Attribution Channel for an external account.
  result = api_instance.create(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountUserAttributionChannelsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to create a User Attribution Channel for | 

### Return type

[**Channel**](Channel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Channel destroy(external_account_id)

A successful call to this API will remove the User Attribution Channel for an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountUserAttributionChannelsApi.new

external_account_id = 56 # Integer | The ID of the external account to remove the User Attribution Channel from


begin
  #A successful call to this API will remove the User Attribution Channel for an external account.
  result = api_instance.destroy(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountUserAttributionChannelsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to remove the User Attribution Channel from | 

### Return type

[**Channel**](Channel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Channel show(external_account_id)

A successful call to this API will show the User Attribution Channel of an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountUserAttributionChannelsApi.new

external_account_id = 56 # Integer | The ID of the external account to show the user attribution channel for


begin
  #A successful call to this API will show the User Attribution Channel of an external account.
  result = api_instance.show(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountUserAttributionChannelsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to show the user attribution channel for | 

### Return type

[**Channel**](Channel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



