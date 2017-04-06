# ESP::SubOrganizationsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SubOrganizationsApi.md#create) | **POST** /api/v2/sub_organizations.json_api | Create a(n) Sub Organization
[**destroy**](SubOrganizationsApi.md#destroy) | **DELETE** /api/v2/sub_organizations/{id}.json_api | Remove a(n) Sub Organization
[**list**](SubOrganizationsApi.md#list) | **PUT** /api/v2/sub_organizations.json_api | Get a list of Sub Organizations
[**show**](SubOrganizationsApi.md#show) | **GET** /api/v2/sub_organizations/{id}.json_api | Show a single Sub Organization
[**update**](SubOrganizationsApi.md#update) | **PATCH** /api/v2/sub_organizations/{id}.json_api | Update a(n) Sub Organization


# **create**
> SubOrganization create(name)

Create a(n) Sub Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

name = "name_example" # String | The name of the sub organization


begin
  #Create a(n) Sub Organization
  result = api_instance.create(name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the sub organization | 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) Sub Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | Sub Organization Id


begin
  #Remove a(n) Sub Organization
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Sub Organization Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Sub Organizations

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Sub Organizations
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->list: #{e}"
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
> SubOrganization show(id, opts)

Show a single Sub Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | Sub Organization Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Sub Organization
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Sub Organization Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> SubOrganization update(id, name)

Update a(n) Sub Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | Sub Organization Id

name = "name_example" # String | The name of the sub organization


begin
  #Update a(n) Sub Organization
  result = api_instance.update(id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Sub Organization Id | 
 **name** | **String**| The name of the sub organization | 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



