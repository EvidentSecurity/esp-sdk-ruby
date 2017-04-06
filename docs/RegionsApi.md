# ESP::RegionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RegionsApi.md#list) | **PUT** /api/v2/regions.json_api | Get a list of Regions
[**show**](RegionsApi.md#show) | **GET** /api/v2/regions/{id}.json_api | Show a single Region


# **list**
> PaginatedCollection list(opts)

Get a list of Regions

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::RegionsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Regions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling RegionsApi->list: #{e}"
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
> Region show(id, opts)

Show a single Region

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::RegionsApi.new

id = 56 # Integer | Region Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Region
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling RegionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Region Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Region**](Region.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



