# ESP::ExternalaccountsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v2_external_accounts_id_complete_json_api_patch**](ExternalaccountsApi.md#api_v2_external_accounts_id_complete_json_api_patch) | **PATCH** /api/v2/external_accounts/{id}/complete.json_api | Show the latest completed report for an External Account
[**api_v2_external_accounts_subscribed_accounts_json_api_get**](ExternalaccountsApi.md#api_v2_external_accounts_subscribed_accounts_json_api_get) | **GET** /api/v2/external_accounts/subscribed_accounts.json_api | Show a list of Subscribed Accounts
[**create**](ExternalaccountsApi.md#create) | **POST** /api/v2/external_accounts.json_api | Create a(n) External Account
[**destroy**](ExternalaccountsApi.md#destroy) | **DELETE** /api/v2/external_accounts/{id}.json_api | Remove a(n) External Account
[**list**](ExternalaccountsApi.md#list) | **PUT** /api/v2/external_accounts.json_api | Get a list of External Accounts
[**show**](ExternalaccountsApi.md#show) | **GET** /api/v2/external_accounts/{id}.json_api | Show a single External Account
[**update**](ExternalaccountsApi.md#update) | **PATCH** /api/v2/external_accounts/{id}.json_api | Update a(n) External Account


# **api_v2_external_accounts_id_complete_json_api_patch**
> api_v2_external_accounts_id_complete_json_api_patch(id)

Show the latest completed report for an External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Show the latest completed report for an External Account
  api_instance.api_v2_external_accounts_id_complete_json_api_patch(id)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->api_v2_external_accounts_id_complete_json_api_patch: #{e}"
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



# **api_v2_external_accounts_subscribed_accounts_json_api_get**
> api_v2_external_accounts_subscribed_accounts_json_api_get

Show a list of Subscribed Accounts

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

begin
  #Show a list of Subscribed Accounts
  api_instance.api_v2_external_accounts_subscribed_accounts_json_api_get
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->api_v2_external_accounts_subscribed_accounts_json_api_get: #{e}"
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



# **create**
> ExternalAccount create(opts)

Create a(n) External Account

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
  #Create a(n) External Account
  result = api_instance.create(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->create: #{e}"
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

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Remove a(n) External Account
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of External Accounts

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of External Accounts
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching | [optional] 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **show**
> ExternalAccount show(id, opts)

Show a single External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalaccountsApi.new

id = 56 # Integer | External Account Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single External Account
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> ExternalAccount update(id, opts)

Update a(n) External Account

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
  #Update a(n) External Account
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalaccountsApi->update: #{e}"
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

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



