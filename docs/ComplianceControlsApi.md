# ESP::ComplianceControlsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ComplianceControlsApi.md#list) | **PUT** /api/v2/compliance_controls.json_api | Get a list of Compliance Controls
[**show**](ComplianceControlsApi.md#show) | **GET** /api/v2/compliance_controls/{id}.json_api | Show a single Compliance Control


# **list**
> PaginatedCollection list(opts)

Get a list of Compliance Controls

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceControlsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, identifier, name] Matching Searchable Attributes: [identifier, name]  Sortable Attributes: [id, identifier, name, position] Searchable Associations: [compliance_standard, compliance_domain] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  compliance_standard,compliance_domain,signatures  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Compliance Controls
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceControlsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, identifier, name] Matching Searchable Attributes: [identifier, name]  Sortable Attributes: [id, identifier, name, position] Searchable Associations: [compliance_standard, compliance_domain] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  compliance_standard,compliance_domain,signatures  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> ComplianceControl show(id, opts)

Show a single Compliance Control

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceControlsApi.new

id = 56 # Integer | Compliance Control Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  compliance_standard,compliance_domain,signatures  See Including Objects for more information.
}

begin
  #Show a single Compliance Control
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceControlsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Compliance Control Id | 
 **include** | **String**| Objects that can be included in the response:  compliance_standard,compliance_domain,signatures  See Including Objects for more information. | [optional] 

### Return type

[**ComplianceControl**](ComplianceControl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



