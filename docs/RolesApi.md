# ESP::RolesApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](RolesApi.md#list) | **GET** /api/v2/roles.json_api | Get a list of Roles
[**show**](RolesApi.md#show) | **GET** /api/v2/roles/{id}.json_api | Show a single Role


# **list**
> PaginatedCollection list(opts)

Get a list of Roles

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::RolesApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, name, role_name]   Sortable Attributes: [name, role_name, updated_at]  Example: filter: {name_eq: 'Bob'}
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Roles
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling RolesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, name, role_name]   Sortable Attributes: [name, role_name, updated_at]  Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> Role show(id)

Show a single Role

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::RolesApi.new

id = 56 # Integer | Role Id


begin
  #Show a single Role
  result = api_instance.show(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling RolesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Role Id | 

### Return type

[**Role**](Role.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



