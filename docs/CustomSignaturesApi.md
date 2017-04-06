# ESP::CustomSignaturesApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomSignaturesApi.md#create) | **POST** /api/v2/custom_signatures.json_api | Create a(n) Custom Signature
[**destroy**](CustomSignaturesApi.md#destroy) | **DELETE** /api/v2/custom_signatures/{id}.json_api | Remove a(n) Custom Signature
[**list**](CustomSignaturesApi.md#list) | **PUT** /api/v2/custom_signatures.json_api | Get a list of Custom Signatures
[**show**](CustomSignaturesApi.md#show) | **GET** /api/v2/custom_signatures/{id}.json_api | Show a single Custom Signature
[**update**](CustomSignaturesApi.md#update) | **PATCH** /api/v2/custom_signatures/{id}.json_api | Update a(n) Custom Signature


# **create**
> CustomSignature create(name)

Create a(n) Custom Signature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

name = "name_example" # String | Name


begin
  #Create a(n) Custom Signature
  result = api_instance.create(name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) Custom Signature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

id = 56 # Integer | Custom Signature Id


begin
  #Remove a(n) Custom Signature
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Custom Signatures

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Custom Signatures
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->list: #{e}"
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
> CustomSignature show(id, opts)

Show a single Custom Signature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

id = 56 # Integer | Custom Signature Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Custom Signature
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> CustomSignature update(id, name)

Update a(n) Custom Signature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

id = 56 # Integer | Custom Signature Id

name = "name_example" # String | Name


begin
  #Update a(n) Custom Signature
  result = api_instance.update(id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature Id | 
 **name** | **String**| Name | 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



