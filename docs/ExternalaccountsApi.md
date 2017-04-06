# ESP::ExternalAccountsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_v2_external_accounts_id_complete_json_api_patch**](ExternalAccountsApi.md#api_v2_external_accounts_id_complete_json_api_patch) | **PATCH** /api/v2/external_accounts/{id}/complete.json_api | Show the latest completed report for an External Account
[**api_v2_external_accounts_subscribed_accounts_json_api_get**](ExternalAccountsApi.md#api_v2_external_accounts_subscribed_accounts_json_api_get) | **GET** /api/v2/external_accounts/subscribed_accounts.json_api | Show a list of Subscribed Accounts
[**create**](ExternalAccountsApi.md#create) | **POST** /api/v2/external_accounts.json_api | Create a(n) External Account
[**destroy**](ExternalAccountsApi.md#destroy) | **DELETE** /api/v2/external_accounts/{id}.json_api | Remove a(n) External Account
[**list**](ExternalAccountsApi.md#list) | **PUT** /api/v2/external_accounts.json_api | Get a list of External Accounts
[**show**](ExternalAccountsApi.md#show) | **GET** /api/v2/external_accounts/{id}.json_api | Show a single External Account
[**update**](ExternalAccountsApi.md#update) | **PATCH** /api/v2/external_accounts/{id}.json_api | Update a(n) External Account


# **api_v2_external_accounts_id_complete_json_api_patch**
> api_v2_external_accounts_id_complete_json_api_patch(id)

Show the latest completed report for an External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Show the latest completed report for an External Account
  api_instance.api_v2_external_accounts_id_complete_json_api_patch(id)
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->api_v2_external_accounts_id_complete_json_api_patch: #{e}"
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

api_instance = ESP::ExternalAccountsApi.new

begin
  #Show a list of Subscribed Accounts
  api_instance.api_v2_external_accounts_subscribed_accounts_json_api_get
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->api_v2_external_accounts_subscribed_accounts_json_api_get: #{e}"
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
> ExternalAccount create(team_id, arn, external_id, opts)

Create a(n) External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

team_id = 56 # Integer | Team Id

arn = "arn_example" # String | ARN

external_id = "external_id_example" # String | External Id

opts = { 
  name: "name_example" # String | Name
}

begin
  #Create a(n) External Account
  result = api_instance.create(team_id, arn, external_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **Integer**| Team Id | 
 **arn** | **String**| ARN | 
 **external_id** | **String**| External Id | 
 **name** | **String**| Name | [optional] 

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

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account Id


begin
  #Remove a(n) External Account
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->destroy: #{e}"
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

api_instance = ESP::ExternalAccountsApi.new

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
  puts "Exception when calling ExternalAccountsApi->list: #{e}"
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

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single External Account
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->show: #{e}"
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
> ExternalAccount update(id, arn, external_id, sub_organization_id, team_id, opts)

Update a(n) External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account Id

arn = "arn_example" # String | ARN

external_id = 56 # Integer | External Id

sub_organization_id = 56 # Integer | Sub Organization Id

team_id = 56 # Integer | Team Id

opts = { 
  name: "name_example" # String | Name
}

begin
  #Update a(n) External Account
  result = api_instance.update(id, arn, external_id, sub_organization_id, team_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 
 **arn** | **String**| ARN | 
 **external_id** | **Integer**| External Id | 
 **sub_organization_id** | **Integer**| Sub Organization Id | 
 **team_id** | **Integer**| Team Id | 
 **name** | **String**| Name | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



