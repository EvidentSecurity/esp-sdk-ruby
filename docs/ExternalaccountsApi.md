# ESP::ExternalaccountsApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2_external_accounts_id_complete_json_patch**](ExternalaccountsApi.md#v2_external_accounts_id_complete_json_patch) | **PATCH** /v2/external_accounts/{id}/complete.json | Show the latest completed report for an External Account
[**v2_external_accounts_id_json_delete**](ExternalaccountsApi.md#v2_external_accounts_id_json_delete) | **DELETE** /v2/external_accounts/{id}.json | Remove an External Account
[**v2_external_accounts_id_json_get**](ExternalaccountsApi.md#v2_external_accounts_id_json_get) | **GET** /v2/external_accounts/{id}.json | Show a single External Account
[**v2_external_accounts_id_json_patch**](ExternalaccountsApi.md#v2_external_accounts_id_json_patch) | **PATCH** /v2/external_accounts/{id}.json | Update an External Account
[**v2_external_accounts_json_post**](ExternalaccountsApi.md#v2_external_accounts_json_post) | **POST** /v2/external_accounts.json | Create an External Account
[**v2_external_accounts_json_put**](ExternalaccountsApi.md#v2_external_accounts_json_put) | **PUT** /v2/external_accounts.json | Get a list of External Accounts
[**v2_external_accounts_subscribed_accounts_json_get**](ExternalaccountsApi.md#v2_external_accounts_subscribed_accounts_json_get) | **GET** /v2/external_accounts/subscribed_accounts.json | Show a list of Subscribed Accounts


# **v2_external_accounts_id_complete_json_patch**
> v2_external_accounts_id_complete_json_patch(id)

Show the latest completed report for an External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Show the latest completed report for an External Account
  api_instance.v2_external_accounts_id_complete_json_patch(id)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_id_complete_json_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **v2_external_accounts_id_json_delete**
> v2_external_accounts_id_json_delete(id)

Remove an External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Remove an External Account
  api_instance.v2_external_accounts_id_json_delete(id)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_id_json_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **v2_external_accounts_id_json_get**
> v2_external_accounts_id_json_get(id)

Show a single External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Show a single External Account
  api_instance.v2_external_accounts_id_json_get(id)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_id_json_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **v2_external_accounts_id_json_patch**
> v2_external_accounts_id_json_patch(id, opts)

Update an External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id

opts = { 
  name: "name_example", # String | Name
  nickname: "nickname_example", # String | Nickname
  team_id: 56 # Integer | Team Id
}

begin
  #Update an External Account
  api_instance.v2_external_accounts_id_json_patch(id, opts)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_id_json_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 
 **name** | **String**| Name | [optional] 
 **nickname** | **String**| Nickname | [optional] 
 **team_id** | **Integer**| Team Id | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **v2_external_accounts_json_post**
> v2_external_accounts_json_post(opts)

Create an External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

opts = { 
  name: "name_example", # String | Name
  nickname: "nickname_example", # String | Nickname
  team_id: 56, # Integer | Team Id
  arn: "arn_example", # String | ARN
  external_id: "external_id_example", # String | External Id
  agency: "agency_example", # String | Agency
  mission: "mission_example", # String | Mission
  role: "role_example" # String | Role
}

begin
  #Create an External Account
  api_instance.v2_external_accounts_json_post(opts)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_json_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | [optional] 
 **nickname** | **String**| Nickname | [optional] 
 **team_id** | **Integer**| Team Id | [optional] 
 **arn** | **String**| ARN | [optional] 
 **external_id** | **String**| External Id | [optional] 
 **agency** | **String**| Agency | [optional] 
 **mission** | **String**| Mission | [optional] 
 **role** | **String**| Role | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **v2_external_accounts_json_put**
> v2_external_accounts_json_put

Get a list of External Accounts

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

begin
  #Get a list of External Accounts
  api_instance.v2_external_accounts_json_put
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_json_put: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **v2_external_accounts_subscribed_accounts_json_get**
> v2_external_accounts_subscribed_accounts_json_get

Show a list of Subscribed Accounts

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

begin
  #Show a list of Subscribed Accounts
  api_instance.v2_external_accounts_subscribed_accounts_json_get
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->v2_external_accounts_subscribed_accounts_json_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



