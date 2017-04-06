# ESP::TagsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TagsApi.md#list) | **GET** /api/v2/alerts/{alert_id}/tags.json_api | Get a list of Tags
[**show**](TagsApi.md#show) | **GET** /api/v2/tags/{id}.json_api | Show a single Tag


# **list**
> PaginatedCollection list(alert_id, opts)

Get a list of Tags

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TagsApi.new

alert_id = 56 # Integer | The ID of the alert to list tags for

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Tags
  result = api_instance.list(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TagsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert to list tags for | 
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
> Tag show(id, opts)

Show a single Tag

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TagsApi.new

id = 56 # Integer | Tag Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Tag
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TagsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Tag Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Tag**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



