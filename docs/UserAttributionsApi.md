# ESP::UserAttributionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_channel**](UserAttributionsApi.md#add_channel) | **POST** /api/v2/external_accounts/{external_account_id}/user_attribution/channel.json_api | Create a User Attribution Channel for an external account
[**remove_channel**](UserAttributionsApi.md#remove_channel) | **DELETE** /api/v2/external_accounts/{external_account_id}/user_attribution/channel.json_api | Remove the User Attribution Channel for an external account
[**show_channel**](UserAttributionsApi.md#show_channel) | **GET** /api/v2/external_accounts/{external_account_id}/user_attribution/channel.json_api | Show the User Attribution Channel of an external account
[**update**](UserAttributionsApi.md#update) | **PATCH** /api/v2/external_accounts/{external_account_id}/user_attribution.json_api | Update the user attributions on an external account


# **add_channel**
> ExternalAccountUserAttributionChannel add_channel(external_account_id)

Create a User Attribution Channel for an external account

URL will only be returned in this response and will not be accessible again.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UserAttributionsApi.new

external_account_id = 56 # Integer | The ID of the external account to create a User Attribution Channel for


begin
  #Create a User Attribution Channel for an external account
  result = api_instance.add_channel(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UserAttributionsApi->add_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to create a User Attribution Channel for | 

### Return type

[**ExternalAccountUserAttributionChannel**](ExternalAccountUserAttributionChannel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_channel**
> Meta remove_channel(external_account_id)

Remove the User Attribution Channel for an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UserAttributionsApi.new

external_account_id = 56 # Integer | The ID of the external account to remove the User Attribution Channel from


begin
  #Remove the User Attribution Channel for an external account
  result = api_instance.remove_channel(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UserAttributionsApi->remove_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to remove the User Attribution Channel from | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_channel**
> ExternalAccountUserAttributionChannel show_channel(external_account_id)

Show the User Attribution Channel of an external account

The channel url will not be returned.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UserAttributionsApi.new

external_account_id = 56 # Integer | The ID of the external account to show the user attribution channel for


begin
  #Show the User Attribution Channel of an external account
  result = api_instance.show_channel(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UserAttributionsApi->show_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to show the user attribution channel for | 

### Return type

[**ExternalAccountUserAttributionChannel**](ExternalAccountUserAttributionChannel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ExternalAccount update(external_account_id, opts)

Update the user attributions on an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UserAttributionsApi.new

external_account_id = 56 # Integer | The ID of the external account to update the user attributions of

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, suppressions, azure_group, credentials See Including Objects for more information.
  cloudtrail_name: "cloudtrail_name_example" # String | The name of the cloudetrail associated with the user attribution.
}

begin
  #Update the user attributions on an external account
  result = api_instance.update(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UserAttributionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to update the user attributions of | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, suppressions, azure_group, credentials See Including Objects for more information. | [optional] 
 **cloudtrail_name** | **String**| The name of the cloudetrail associated with the user attribution. | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



