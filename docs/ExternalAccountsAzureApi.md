# ESP::ExternalAccountsAzureApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalAccountsAzureApi.md#create) | **POST** /api/v2/external_accounts/azure.json_api | Create an Azure External Account
[**reset_url**](ExternalAccountsAzureApi.md#reset_url) | **PATCH** /api/v2/external_accounts/{external_account_id}/azure/log_url.json_api | Reset Log URL for an Azure External Account
[**show**](ExternalAccountsAzureApi.md#show) | **GET** /api/v2/external_accounts/{external_account_id}/azure.json_api | Show an Azure External Account
[**update**](ExternalAccountsAzureApi.md#update) | **PATCH** /api/v2/external_accounts/{external_account_id}/azure.json_api | Update an Azure External Account


# **create**
> ExternalAccountAzure create(subscription_id, client_id, tenant_id, app_key, name, team_id)

Create an Azure External Account

The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAzureApi.new

subscription_id = "subscription_id_example" # String | Azure subscription ID

client_id = "client_id_example" # String | Azure client ID

tenant_id = "tenant_id_example" # String | Azure tenant ID

app_key = "app_key_example" # String | Azure app key

name = "name_example" # String | Name

team_id = 56 # Integer | The ID of the team the external account belongs to


begin
  #Create an Azure External Account
  result = api_instance.create(subscription_id, client_id, tenant_id, app_key, name, team_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAzureApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| Azure subscription ID | 
 **client_id** | **String**| Azure client ID | 
 **tenant_id** | **String**| Azure tenant ID | 
 **app_key** | **String**| Azure app key | 
 **name** | **String**| Name | 
 **team_id** | **Integer**| The ID of the team the external account belongs to | 

### Return type

[**ExternalAccountAzure**](ExternalAccountAzure.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **reset_url**
> ExternalAccountAzure reset_url(external_account_id)

Reset Log URL for an Azure External Account

This endpoint invalidates the previous URL and generates a new one. The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAzureApi.new

external_account_id = 56 # Integer | The ID of the external account to reset an Azure log URL for


begin
  #Reset Log URL for an Azure External Account
  result = api_instance.reset_url(external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAzureApi->reset_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to reset an Azure log URL for | 

### Return type

[**ExternalAccountAzure**](ExternalAccountAzure.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ExternalAccountAzure show(external_account_id, opts)

Show an Azure External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAzureApi.new

external_account_id = 56 # Integer | The ID of the external account to show an Azure credential for

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_account See Including Objects for more information.
}

begin
  #Show an Azure External Account
  result = api_instance.show(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAzureApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to show an Azure credential for | 
 **include** | **String**| Related objects that can be included in the response:  external_account See Including Objects for more information. | [optional] 

### Return type

[**ExternalAccountAzure**](ExternalAccountAzure.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ExternalAccountAzure update(external_account_id, opts)

Update an Azure External Account

 The related external_account object will be returned with the response.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAzureApi.new

external_account_id = 56 # Integer | The ID of the external account to update an Azure credential for

opts = { 
  subscription_id: "subscription_id_example", # String | Azure subscription ID
  client_id: "client_id_example", # String | Azure client ID
  tenant_id: "tenant_id_example", # String | Azure tenant ID
  app_key: "app_key_example", # String | Azure app key
  name: "name_example", # String | Name
  team_id: 56 # Integer | The ID of the team the external account belongs to
}

begin
  #Update an Azure External Account
  result = api_instance.update(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAzureApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to update an Azure credential for | 
 **subscription_id** | **String**| Azure subscription ID | [optional] 
 **client_id** | **String**| Azure client ID | [optional] 
 **tenant_id** | **String**| Azure tenant ID | [optional] 
 **app_key** | **String**| Azure app key | [optional] 
 **name** | **String**| Name | [optional] 
 **team_id** | **Integer**| The ID of the team the external account belongs to | [optional] 

### Return type

[**ExternalAccountAzure**](ExternalAccountAzure.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



