# ESP::OrganizationsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](OrganizationsApi.md#list) | **PUT** /api/v2/organizations.json_api | Get a list of Organizations
[**show**](OrganizationsApi.md#show) | **GET** /api/v2/organizations/{id}.json_api | Show a single Organization
[**update**](OrganizationsApi.md#update) | **PATCH** /api/v2/organizations/{id}.json_api | Update a(n) Organization


# **list**
> PaginatedCollection list(opts)

Get a list of Organizations

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::OrganizationsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Organizations
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling OrganizationsApi->list: #{e}"
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
> Organization show(id, opts)

Show a single Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::OrganizationsApi.new

id = 56 # Integer | Organization Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Organization
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling OrganizationsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Organization Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> Organization update(id, name)

Update a(n) Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::OrganizationsApi.new

id = 56 # Integer | Organization Id

name = "name_example" # String | Name


begin
  #Update a(n) Organization
  result = api_instance.update(id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling OrganizationsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Organization Id | 
 **name** | **String**| Name | 

### Return type

[**Organization**](Organization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



