# ESP::ComplianceDomainsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ComplianceDomainsApi.md#list) | **PUT** /api/v2/compliance_domains.json_api | Get a list of ComplianceDomains
[**show**](ComplianceDomainsApi.md#show) | **GET** /api/v2/compliance_domains/{id}.json_api | Show a single ComplianceDomain


# **list**
> PaginatedCollection list(opts)

Get a list of ComplianceDomains

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceDomainsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of ComplianceDomains
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceDomainsApi->list: #{e}"
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
> ComplianceDomain show(id, opts)

Show a single ComplianceDomain

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceDomainsApi.new

id = 56 # Integer | ComplianceDomain ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single ComplianceDomain
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceDomainsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ComplianceDomain ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**ComplianceDomain**](ComplianceDomain.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



