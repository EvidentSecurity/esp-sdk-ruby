# ESP::ComplianceDomainsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ComplianceDomainsApi.md#list) | **PUT** /api/v2/compliance_domains.json_api | Get a list of Compliance Domains
[**show**](ComplianceDomainsApi.md#show) | **GET** /api/v2/compliance_domains/{id}.json_api | Show a single Compliance Domain


# **list**
> PaginatedCollection list(opts)

Get a list of Compliance Domains

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceDomainsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, position, identifier, name] Matching Searchable Attributes: [identifier, name]  Sortable Attributes: [id, identifier, name, position] Searchable Association: [compliance_standard] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  compliance_standard,compliance_controls  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Compliance Domains
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceDomainsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, position, identifier, name] Matching Searchable Attributes: [identifier, name]  Sortable Attributes: [id, identifier, name, position] Searchable Association: [compliance_standard] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  compliance_standard,compliance_controls  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ComplianceDomain show(id, opts)

Show a single Compliance Domain

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceDomainsApi.new

id = 56 # Integer | Compliance Domain Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  compliance_standard,compliance_controls  See Including Objects for more information.
}

begin
  #Show a single Compliance Domain
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceDomainsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Compliance Domain Id | 
 **include** | **String**| Objects that can be included in the response:  compliance_standard,compliance_controls  See Including Objects for more information. | [optional] 

### Return type

[**ComplianceDomain**](ComplianceDomain.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



