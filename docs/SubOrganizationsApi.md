# ESP::SubOrganizationsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SubOrganizationsApi.md#create) | **POST** /api/v2/sub_organizations.json_api | Create a(n) SubOrganization
[**destroy**](SubOrganizationsApi.md#destroy) | **DELETE** /api/v2/sub_organizations/{id}.json_api | Remove a(n) SubOrganization
[**list**](SubOrganizationsApi.md#list) | **PUT** /api/v2/sub_organizations.json_api | Get a list of SubOrganizations
[**show**](SubOrganizationsApi.md#show) | **GET** /api/v2/sub_organizations/{id}.json_api | Show a single SubOrganization
[**update**](SubOrganizationsApi.md#update) | **PATCH** /api/v2/sub_organizations/{id}.json_api | Update a(n) SubOrganization


# **create**
> SubOrganization create(organization_id, name)

Create a(n) SubOrganization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

organization_id = 56 # Integer | The ID of the organization this sub organization should belong to

name = "name_example" # String | Name of the sub organization


begin
  #Create a(n) SubOrganization
  result = api_instance.create(organization_id, name)
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

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) SubOrganization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | SubOrganization ID


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
 **id** | **Integer**| SubOrganization ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of SubOrganizations

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of SubOrganizations
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  See Searching Lists for more information. | [optional] 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> SubOrganization show(id, opts)

Show a single SubOrganization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | SubOrganization ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single SubOrganization
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| SubOrganization ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> SubOrganization update(id, name)

Update a(n) SubOrganization

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SubOrganizationsApi.new

id = 56 # Integer | SubOrganization ID

name = "name_example" # String | Name of the sub organization


begin
  #Update a(n) SubOrganization
  result = api_instance.update(id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SubOrganizationsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| SubOrganization ID | 
 **name** | **String**| Name of the sub organization | 

### Return type

[**SubOrganization**](SubOrganization.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



