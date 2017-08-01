# ESP::SubOrganizationsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SubOrganizationsApi.md#create) | **POST** /api/v2/sub_organizations.json_api | Create a(n) Sub Organization
[**destroy**](SubOrganizationsApi.md#destroy) | **DELETE** /api/v2/sub_organizations/{id}.json_api | Remove a(n) SubOrganization
[**list**](SubOrganizationsApi.md#list) | **PUT** /api/v2/sub_organizations.json_api | Get a list of Sub Organizations
[**show**](SubOrganizationsApi.md#show) | **GET** /api/v2/sub_organizations/{id}.json_api | Show a single Sub Organization
[**update**](SubOrganizationsApi.md#update) | **PATCH** /api/v2/sub_organizations/{id}.json_api | Update a(n) Sub Organization


# **create**
> SubOrganization create(organization_id, name)

Create a(n) Sub Organization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

organization_id = 56 # Integer | The Id of the organization this sub organization should belong to

name = "name_example" # String | The name of the sub organization


begin
  #Create a(n) Sub Organization
  result = api_instance.create(organization_id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **Integer**| The Id of the organization this sub organization should belong to | 
 **name** | **String**| The name of the sub organization | 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **destroy**
> SubOrganization destroy(id)

Remove a(n) SubOrganization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | SubOrganization Id


begin
  #Remove a(n) SubOrganization
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| SubOrganization Id | 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Sub Organizations

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Association: [organization] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  external_accounts,organization,teams  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Association: [organization] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  external_accounts,organization,teams  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



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
  include: "include_example" # String | Objects that can be included in the response:  external_accounts,organization,teams  See Including Objects for more information.
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
 **include** | **String**| Objects that can be included in the response:  external_accounts,organization,teams  See Including Objects for more information. | [optional] 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



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
 - **Accept**: application/vnd.api+json



