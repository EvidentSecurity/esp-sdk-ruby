# ESP::SignaturesApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SignaturesApi.md#list) | **PUT** /api/v2/signatures.json_api | Get a list of Signatures
[**run**](SignaturesApi.md#run) | **POST** /api/v2/signatures/{id}/run.json_api | A successful call to this API returns a list of alerts for the specific signature identified by the id parameter. The body of the request must contain a json api compliant hash of attributes with type signatures
[**show**](SignaturesApi.md#show) | **GET** /api/v2/signatures/{id}.json_api | Show a single Signature


# **list**
> PaginatedCollection list(opts)

Get a list of Signatures

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Signatures
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->list: #{e}"
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



# **run**
> Array&lt;Alert&gt; run(id, external_account_id, opts)

A successful call to this API returns a list of alerts for the specific signature identified by the id parameter. The body of the request must contain a json api compliant hash of attributes with type signatures

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

id = 56 # Integer | The ID of the signature to run

external_account_id = 56 # Integer | The ID of the external account to run this signature against

opts = { 
  region: nil # Object | A single region name to run this signature against
}

begin
  #A successful call to this API returns a list of alerts for the specific signature identified by the id parameter. The body of the request must contain a json api compliant hash of attributes with type signatures
  result = api_instance.run(id, external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the signature to run | 
 **external_account_id** | **Integer**| The ID of the external account to run this signature against | 
 **region** | [**Object**](.md)| A single region name to run this signature against | [optional] 

### Return type

[**Array&lt;Alert&gt;**](Alert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **show**
> Signature show(id, opts)

Show a single Signature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

id = 56 # Integer | Signature Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Signature
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Signature Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Signature**](Signature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



