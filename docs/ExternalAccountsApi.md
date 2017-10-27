# ESP::ExternalAccountsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalAccountsApi.md#create) | **POST** /api/v2/external_accounts.json_api | Create a(n) ExternalAccount
[**destroy**](ExternalAccountsApi.md#destroy) | **DELETE** /api/v2/external_accounts/{id}.json_api | Remove a(n) ExternalAccount
[**list**](ExternalAccountsApi.md#list) | **PUT** /api/v2/external_accounts.json_api | Get a list of ExternalAccounts
[**show**](ExternalAccountsApi.md#show) | **GET** /api/v2/external_accounts/{id}.json_api | Show a single ExternalAccount
[**update**](ExternalAccountsApi.md#update) | **PATCH** /api/v2/external_accounts/{id}.json_api | Update a(n) ExternalAccount


# **create**
> ExternalAccount create(team_id, arn, external_id, opts)

Create a(n) ExternalAccount

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

team_id = 56 # Integer | The ID of the team the external account will belong to

arn = "arn_example" # String | Amazon Resource Name for the IAM role

external_id = "external_id_example" # String | External Identifier set on the role

opts = { 
  name: "name_example" # String | Name
}

begin
  #Create a(n) ExternalAccount
  result = api_instance.create(team_id, arn, external_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **Integer**| The ID of the team the external account will belong to | 
 **arn** | **String**| Amazon Resource Name for the IAM role | 
 **external_id** | **String**| External Identifier set on the role | 
 **name** | **String**| Name | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) ExternalAccount

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | ExternalAccount ID


begin
  #Remove a(n) ExternalAccount
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ExternalAccount ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of ExternalAccounts

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of ExternalAccounts
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  See Searching Lists for more information. | [optional] 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ExternalAccount show(id, opts)

Show a single ExternalAccount

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | ExternalAccount ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single ExternalAccount
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ExternalAccount ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ExternalAccount update(id, team_id, opts)

Update a(n) ExternalAccount

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | ExternalAccount ID

team_id = 56 # Integer | The ID of the team the external account will belong to

opts = { 
  name: "name_example" # String | Name
}

begin
  #Update a(n) ExternalAccount
  result = api_instance.update(id, team_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ExternalAccount ID | 
 **team_id** | **Integer**| The ID of the team the external account will belong to | 
 **name** | **String**| Name | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



