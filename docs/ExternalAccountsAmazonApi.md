# ESP::ExternalAccountsAmazonApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalAccountsAmazonApi.md#create) | **POST** /api/v2/external_accounts/amazon.json_api | Create an Amazon External Account
[**show**](ExternalAccountsAmazonApi.md#show) | **GET** /api/v2/external_accounts/{external_account_id}/amazon.json_api | Show an Amazon External Account
[**update**](ExternalAccountsAmazonApi.md#update) | **PATCH** /api/v2/external_accounts/{external_account_id}/amazon.json_api | Update an Amazon External Account


# **create**
> ExternalAccountAmazonIam create(arn, external_id, name, team_id)

Create an Amazon External Account

 The related external_account object will be returned with the response.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAmazonApi.new

arn = "arn_example" # String | Amazon Resource Name for the IAM role

external_id = "external_id_example" # String | External Identifier set on the role

name = "name_example" # String | Name

team_id = 56 # Integer | The ID of the team the external account belongs to


begin
  #Create an Amazon External Account
  result = api_instance.create(arn, external_id, name, team_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAmazonApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **arn** | **String**| Amazon Resource Name for the IAM role | 
 **external_id** | **String**| External Identifier set on the role | 
 **name** | **String**| Name | 
 **team_id** | **Integer**| The ID of the team the external account belongs to | 

### Return type

[**ExternalAccountAmazonIam**](ExternalAccountAmazonIam.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ExternalAccountAmazonIam show(external_account_id, opts)

Show an Amazon External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAmazonApi.new

external_account_id = 56 # Integer | The ID of the external account to show an Amazon IAM credential for

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_account See Including Objects for more information.
}

begin
  #Show an Amazon External Account
  result = api_instance.show(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAmazonApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to show an Amazon IAM credential for | 
 **include** | **String**| Related objects that can be included in the response:  external_account See Including Objects for more information. | [optional] 

### Return type

[**ExternalAccountAmazonIam**](ExternalAccountAmazonIam.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ExternalAccountAmazonIam update(external_account_id, opts)

Update an Amazon External Account

 The related external_account object will be returned with the response.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsAmazonApi.new

external_account_id = 56 # Integer | The ID of the external account to update an Amazon IAM credential of

opts = { 
  arn: "arn_example", # String | Amazon Resource Name for the IAM role
  external_id: "external_id_example", # String | External Identifier set on the role
  name: "name_example", # String | Name
  team_id: 56 # Integer | The ID of the team the external account belongs to
}

begin
  #Update an Amazon External Account
  result = api_instance.update(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsAmazonApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to update an Amazon IAM credential of | 
 **arn** | **String**| Amazon Resource Name for the IAM role | [optional] 
 **external_id** | **String**| External Identifier set on the role | [optional] 
 **name** | **String**| Name | [optional] 
 **team_id** | **Integer**| The ID of the team the external account belongs to | [optional] 

### Return type

[**ExternalAccountAmazonIam**](ExternalAccountAmazonIam.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



