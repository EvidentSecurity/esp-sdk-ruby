# ESP::OrganizationsApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](OrganizationsApi.md#create) | **POST** /v2/organizations.json | Create an Organization
[**destroy**](OrganizationsApi.md#destroy) | **DELETE** /v2/organizations/{id}.json | Remove an Organization
[**list**](OrganizationsApi.md#list) | **PUT** /v2/organizations.json | Get a list of Organizations
[**show**](OrganizationsApi.md#show) | **GET** /v2/organizations/{id}.json | Show a single Organization
[**update**](OrganizationsApi.md#update) | **PATCH** /v2/organizations/{id}.json | Update an Organization


# **create**
> Organization create(opts)

Create an Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::OrganizationsApi.new

opts = { 
  name: "name_example" # String | Name
}

begin
  #Create an Organization
  result = api_instance.create(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling OrganizationsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Organization destroy(id)

Remove an Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::OrganizationsApi.new

id = 56 # Integer | Organization Id


begin
  #Remove an Organization
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling OrganizationsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Organization Id | 

### Return type

[**Organization**](Organization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Organizations

A successful call to this API returns a paginated list of organizations.

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
> Organization update(id, opts)

Update an Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::OrganizationsApi.new

id = 56 # Integer | Organization Id

opts = { 
  name: "name_example" # String | Name
}

begin
  #Update an Organization
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling OrganizationsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Organization Id | 
 **name** | **String**| Name | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



