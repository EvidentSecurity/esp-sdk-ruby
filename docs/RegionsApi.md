# ESP::RegionsApi

All URIs are relative to https://api.evident.io

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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, code] Matching Searchable Attribute: [code] Limited Searchable Attribute: [provider_eq]  Searchable Association: [suppressions] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, code] Matching Searchable Attribute: [code] Limited Searchable Attribute: [provider_eq]  Searchable Association: [suppressions] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Region show(id)

Show a single Region

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::RegionsApi.new

id = 56 # Integer | Region Id


begin
  #Show a single Region
  result = api_instance.show(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling RegionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Region Id | 

### Return type

[**Region**](Region.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



