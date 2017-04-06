# ESP::CustomSignatureResultsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomSignatureResultsApi.md#create) | **POST** /api/v2/custom_signature_results.json_api | Create a(n) Result
[**list**](CustomSignatureResultsApi.md#list) | **PUT** /api/v2/custom_signature_results.json_api | Get a list of Results
[**show**](CustomSignatureResultsApi.md#show) | **GET** /api/v2/custom_signature_results/{id}.json_api | Show a single Result


# **create**
> Result create(code, custom_signature_definition_id, external_account_id, language, region_id, opts)

Create a(n) Result

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
  #Create a(n) Result
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

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Results

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Results
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching | [optional] 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **show**
> Result show(id, opts)

Show a single Result

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureResultsApi.new

id = 56 # Integer | Result Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Result
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureResultsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Result Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Result**](Result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



