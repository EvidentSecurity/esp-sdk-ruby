# ESP::APIKeysApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](APIKeysApi.md#create) | **POST** /api/v2/api_keys.json_api | Create a(n) API Key
[**delete**](APIKeysApi.md#delete) | **DELETE** /api/v2/api_keys/{id}.json_api | Delete a(n) API Key
[**list**](APIKeysApi.md#list) | **GET** /api/v2/api_keys.json_api | Get a list of API Keys
[**show**](APIKeysApi.md#show) | **GET** /api/v2/api_keys/{id}.json_api | Show a single API Key
[**update**](APIKeysApi.md#update) | **PATCH** /api/v2/api_keys/{id}.json_api | Update a(n) API Key


# **create**
> APIKey create(opts)

Create a(n) API Key

The secret key will only be returned once when the key is first created

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::APIKeysApi.new

opts = { 
  name: "name_example", # String | The name of the API Key
  include: "include_example" # String | Related objects that can be included in the response:  user See Including Objects for more information.
}

begin
  #Create a(n) API Key
  result = api_instance.create(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling APIKeysApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the API Key | [optional] 
 **include** | **String**| Related objects that can be included in the response:  user See Including Objects for more information. | [optional] 

### Return type

[**APIKey**](APIKey.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) API Key



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::APIKeysApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) API Key
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling APIKeysApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of API Keys



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::APIKeysApi.new

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  user See Including Objects for more information.
}

begin
  #Get a list of API Keys
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling APIKeysApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  user See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> APIKey show(id, opts)

Show a single API Key



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::APIKeysApi.new

id = 56 # Integer | API Key ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  user See Including Objects for more information.
}

begin
  #Show a single API Key
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling APIKeysApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| API Key ID | 
 **include** | **String**| Related objects that can be included in the response:  user See Including Objects for more information. | [optional] 

### Return type

[**APIKey**](APIKey.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> APIKey update(id, opts)

Update a(n) API Key



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::APIKeysApi.new

id = 56 # Integer | API Key ID

opts = { 
  name: "name_example", # String | The name of the API Key
  include: "include_example" # String | Related objects that can be included in the response:  user See Including Objects for more information.
}

begin
  #Update a(n) API Key
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling APIKeysApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| API Key ID | 
 **name** | **String**| The name of the API Key | [optional] 
 **include** | **String**| Related objects that can be included in the response:  user See Including Objects for more information. | [optional] 

### Return type

[**APIKey**](APIKey.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



