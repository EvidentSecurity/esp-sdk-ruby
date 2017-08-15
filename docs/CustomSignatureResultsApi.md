# ESP::CustomSignatureResultsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**alerts**](CustomSignatureResultsApi.md#alerts) | **GET** /api/v2/custom_signature_results/{custom_signature_result_id}/alerts.json_api | Returns the alerts for a given result. Note that this format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the id parameter.
[**create**](CustomSignatureResultsApi.md#create) | **POST** /api/v2/custom_signature_results.json_api | Create a(n) Custom Signature/Result
[**list**](CustomSignatureResultsApi.md#list) | **PUT** /api/v2/custom_signature_results.json_api | Get a list of Custom Signature/Results
[**show**](CustomSignatureResultsApi.md#show) | **GET** /api/v2/custom_signature_results/{id}.json_api | Show a single Custom Signature/Result


# **alerts**
> PaginatedCollection alerts(custom_signature_result_id, opts)

Returns the alerts for a given result. Note that this format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the id parameter.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

custom_signature_result_id = 56 # Integer | Custom Signature Result Id

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  external_account,region,custom_signature  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Returns the alerts for a given result. Note that this format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the id parameter.
  result = api_instance.alerts(custom_signature_result_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_result_id** | **Integer**| Custom Signature Result Id | 
 **include** | **String**| Objects that can be included in the response:  external_account,region,custom_signature  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> CustomSignatureResult create(code, custom_signature_definition_id, external_account_id, language, region_id, opts)

Create a(n) Custom Signature/Result

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

code = "code_example" # String | The code to run

custom_signature_definition_id = 56 # Integer | ID of the custom signature definition this result should belong to.

external_account_id = 56 # Integer | ID of the external account the code should run for.

language = "language_example" # String | The language of the code

region_id = 56 # Integer | ID of the region the code should run for.

opts = { 
  region: "region_example" # String | Code of the region the result code should run for. Ex: us-east-1. This can be sent instead of region_id
}

begin
  #Create a(n) Custom Signature/Result
  result = api_instance.create(code, custom_signature_definition_id, external_account_id, language, region_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The code to run | 
 **custom_signature_definition_id** | **Integer**| ID of the custom signature definition this result should belong to. | 
 **external_account_id** | **Integer**| ID of the external account the code should run for. | 
 **language** | **String**| The language of the code | 
 **region_id** | **Integer**| ID of the region the code should run for. | 
 **region** | **String**| Code of the region the result code should run for. Ex: us-east-1. This can be sent instead of region_id | [optional] 

### Return type

[**CustomSignatureResult**](CustomSignatureResult.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Custom Signature/Results

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, language, status]    Searchable Associations: [definition, region, external_account] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  external_account,region,definition,alerts  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Custom Signature/Results
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, language, status]    Searchable Associations: [definition, region, external_account] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  external_account,region,definition,alerts  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> CustomSignatureResult show(id, opts)

Show a single Custom Signature/Result

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

id = 56 # Integer | Custom Signature/Result Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  external_account,region,definition,alerts  See Including Objects for more information.
}

begin
  #Show a single Custom Signature/Result
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature/Result Id | 
 **include** | **String**| Objects that can be included in the response:  external_account,region,definition,alerts  See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureResult**](CustomSignatureResult.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



