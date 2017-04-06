# ESP::CustomSignatureDefinitionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomSignatureDefinitionsApi.md#create) | **POST** /api/v2/custom_signature_definitions.json_api | Create a(n) Definition
[**destroy**](CustomSignatureDefinitionsApi.md#destroy) | **DELETE** /api/v2/custom_signature_definitions/{id}.json_api | Remove a(n) Definition
[**list**](CustomSignatureDefinitionsApi.md#list) | **PUT** /api/v2/custom_signature_definitions.json_api | Get a list of Definitions
[**show**](CustomSignatureDefinitionsApi.md#show) | **GET** /api/v2/custom_signature_definitions/{id}.json_api | Show a single Definition
[**update**](CustomSignatureDefinitionsApi.md#update) | **PATCH** /api/v2/custom_signature_definitions/{id}.json_api | Update a(n) Definition


# **create**
> Definition create(custom_signature_id)

Create a(n) Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_id = 56 # Integer | ID of the custom signature this definition should belong to.


begin
  #Create a(n) Definition
  result = api_instance.create(custom_signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_id** | **Integer**| ID of the custom signature this definition should belong to. | 

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Definition Id


begin
  #Remove a(n) Definition
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Definition Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Definitions

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Definitions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->list: #{e}"
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
> Definition show(id, opts)

Show a single Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Definition Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single Definition
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Definition Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> Definition update(id, code, language)

Update a(n) Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Definition Id

code = "code_example" # String | The code for the definition

language = "language_example" # String | The language of the code


begin
  #Update a(n) Definition
  result = api_instance.update(id, code, language)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Definition Id | 
 **code** | **String**| The code for the definition | 
 **language** | **String**| The language of the code | 

### Return type

[**Definition**](Definition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



