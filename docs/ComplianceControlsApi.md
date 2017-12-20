# ESP::ComplianceControlsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ComplianceControlsApi.md#list) | **PUT** /api/v2/compliance_controls.json_api | Get a list of Compliance Controls
[**list_signatures**](ComplianceControlsApi.md#list_signatures) | **GET** /api/v2/compliance_controls/{compliance_control_id}/signatures.json_api | Get a list of Signatures for a Compliance Control
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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, identifier, name] Matching Searchable Attributes: [identifier, name]  Sortable Attributes: [id, identifier, name, position] Searchable Associations: [compliance_standard, compliance_domain] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information.
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, identifier, name] Matching Searchable Attributes: [identifier, name]  Sortable Attributes: [id, identifier, name, position] Searchable Associations: [compliance_standard, compliance_domain] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_signatures**
> PaginatedCollection list_signatures(compliance_control_id, opts)

Get a list of Signatures for a Compliance Control

The compliance standard must be paid for to view signatures for a control on that standard.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceControlsApi.new

compliance_control_id = 56 # Integer | The ID of the Compliance Control this signature belongs to

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Get a list of Signatures for a Compliance Control
  result = api_instance.list_signatures(compliance_control_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ComplianceControlsApi->list_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compliance_control_id** | **Integer**| The ID of the Compliance Control this signature belongs to | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ComplianceControl show(id, opts)

Show a single Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ComplianceControlsApi.new

id = 56 # Integer | Compliance Control ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information.
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
 **id** | **Integer**| Compliance Control ID | 
 **include** | **String**| Related objects that can be included in the response:  compliance_standard, compliance_domain, signatures See Including Objects for more information. | [optional] 

### Return type

[**ComplianceControl**](ComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



