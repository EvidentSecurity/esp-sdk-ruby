# ESP::ServicesApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ServicesApi.md#list) | **PUT** /api/v2/services.json_api | Get a list of Services
[**show**](ServicesApi.md#show) | **GET** /api/v2/services/{id}.json_api | Show a single Service


# **list**
> PaginatedCollection list(opts)

Get a list of Services

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ServicesApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, name, policy_name] Matching Searchable Attributes: [name, policy_name] Limited Searchable Attribute: [provider_eq]   Example: filter: {name_eq: 'Bob'}
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Services
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ServicesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, name, policy_name] Matching Searchable Attributes: [name, policy_name] Limited Searchable Attribute: [provider_eq]   Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Service show(id)

Show a single Service

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ServicesApi.new

id = 56 # Integer | Service Id


begin
  #Show a single Service
  result = api_instance.show(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ServicesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Service Id | 

### Return type

[**Service**](Service.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



