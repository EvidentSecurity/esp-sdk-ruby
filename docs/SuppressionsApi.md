# ESP::SuppressionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deactivate**](SuppressionsApi.md#deactivate) | **PATCH** /api/v2/suppressions/{id}/deactivate.json_api | A successful call to this API will deactivate a suppression identified by the id parameter.
[**list**](SuppressionsApi.md#list) | **PUT** /api/v2/suppressions.json_api | Get a list of Suppressions
[**show**](SuppressionsApi.md#show) | **GET** /api/v2/suppressions/{id}.json_api | Show a single Suppression


# **deactivate**
> Suppression deactivate(id)

A successful call to this API will deactivate a suppression identified by the id parameter.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression Id


begin
  #A successful call to this API will deactivate a suppression identified by the id parameter.
  result = api_instance.deactivate(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->deactivate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Suppression Id | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Suppressions

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Suppressions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->list: #{e}"
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
> Suppression show(id, opts)

Show a single Suppression

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Suppression
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Suppression Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



