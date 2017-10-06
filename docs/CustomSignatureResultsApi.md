# ESP::CustomSignatureResultsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**alerts**](CustomSignatureResultsApi.md#alerts) | **GET** /api/v2/custom_signature_results/{custom_signature_result_id}/alerts.json_api | Returns the alerts for a given result. Note that this format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the custom_signature_result_id parameter.
[**create**](CustomSignatureResultsApi.md#create) | **POST** /api/v2/custom_signature_results.json_api | Create a(n) CustomSignatureResult
[**list**](CustomSignatureResultsApi.md#list) | **PUT** /api/v2/custom_signature_results.json_api | Get a list of CustomSignatureResults
[**show**](CustomSignatureResultsApi.md#show) | **GET** /api/v2/custom_signature_results/{id}.json_api | Show a single CustomSignatureResult


# **alerts**
> PaginatedCollection alerts(custom_signature_result_id, opts)

Returns the alerts for a given result. Note that this format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the custom_signature_result_id parameter.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

custom_signature_result_id = 56 # Integer | Custom Signature Result ID

opts = { 
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Returns the alerts for a given result. Note that this format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the custom_signature_result_id parameter.
  result = api_instance.alerts(custom_signature_result_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_result_id** | **Integer**| Custom Signature Result ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> CustomSignatureResult create(code, custom_signature_definition_id, external_account_id, language, opts)

Create a(n) CustomSignatureResult

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

code = "code_example" # String | The code for this definition

custom_signature_definition_id = 56 # Integer | ID of the custom signature definition this result belongs to

external_account_id = 56 # Integer | ID of the external account the code should run for

language = "language_example" # String | The language of the definition. Valid values are ruby, javascript

opts = { 
  region_id: 56, # Integer | ID of the region the code should run for.  Required if region is not supplied.
  region: "region_example" # String | Code of the region the result code should run for. Ex: us-east-1. This can be sent instead of region_id
}

begin
  #Create a(n) CustomSignatureResult
  result = api_instance.create(code, custom_signature_definition_id, external_account_id, language, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The code for this definition | 
 **custom_signature_definition_id** | **Integer**| ID of the custom signature definition this result belongs to | 
 **external_account_id** | **Integer**| ID of the external account the code should run for | 
 **language** | **String**| The language of the definition. Valid values are ruby, javascript | 
 **region_id** | **Integer**| ID of the region the code should run for.  Required if region is not supplied. | [optional] 
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

Get a list of CustomSignatureResults

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of CustomSignatureResults
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->list: #{e}"
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
> CustomSignatureResult show(id, opts)

Show a single CustomSignatureResult

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

id = 56 # Integer | CustomSignatureResult ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single CustomSignatureResult
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignatureResult ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureResult**](CustomSignatureResult.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



