# ESP::ServicesApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ServicesApi.md#list) | **GET** /api/v2/services.json_api | Get a list of Services
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
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
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
> Service show(id, opts)

Show a single Service

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ServicesApi.new

id = 56 # Integer | Service Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Service
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ServicesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Service Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Service**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



