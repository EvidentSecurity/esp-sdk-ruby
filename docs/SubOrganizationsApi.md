# ESP::SubOrganizationsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SubOrganizationsApi.md#create) | **POST** /api/v2/sub_organizations.json_api | Create a(n) Sub Organization
[**delete**](SubOrganizationsApi.md#delete) | **DELETE** /api/v2/sub_organizations/{id}.json_api | Delete a(n) Sub Organization
[**list**](SubOrganizationsApi.md#list) | **PUT** /api/v2/sub_organizations.json_api | Get a list of Sub Organizations
[**show**](SubOrganizationsApi.md#show) | **GET** /api/v2/sub_organizations/{id}.json_api | Show a single Sub Organization
[**update**](SubOrganizationsApi.md#update) | **PATCH** /api/v2/sub_organizations/{id}.json_api | Update a(n) Sub Organization


# **create**
> SubOrganization create(organization_id, name, opts)

Create a(n) Sub Organization



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

organization_id = 56 # Integer | The ID of the organization this sub organization should belong to

name = "name_example" # String | Name of the sub organization

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information.
}

begin
  #Create a(n) Sub Organization
  result = api_instance.create(organization_id, name, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **Integer**| The ID of the organization this sub organization should belong to | 
 **name** | **String**| Name of the sub organization | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information. | [optional] 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Sub Organization



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) Sub Organization
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Association: [organization] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information.
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Association: [organization] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> SubOrganization show(id, opts)

Show a single Sub Organization



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | Sub Organization ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information.
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
 **id** | **Integer**| Sub Organization ID | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information. | [optional] 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> SubOrganization update(id, opts)

Update a(n) Sub Organization



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | Sub Organization ID

opts = { 
  name: "name_example", # String | Name of the sub organization
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information.
}

begin
  #Update a(n) Sub Organization
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Sub Organization ID | 
 **name** | **String**| Name of the sub organization | [optional] 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, organization, teams See Including Objects for more information. | [optional] 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



