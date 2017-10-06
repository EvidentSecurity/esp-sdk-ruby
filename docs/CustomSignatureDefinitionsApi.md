# ESP::CustomSignatureDefinitionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate**](CustomSignatureDefinitionsApi.md#activate) | **PATCH** /api/v2/custom_signature_definitions/{custom_signature_definition_id}/activate.json_api | A successful call to this API marks the definition for activation.  The definition will go into the &#39;validating&#39; state and will be tested before activating. The definition must have a status of editable to be activated.
[**archive**](CustomSignatureDefinitionsApi.md#archive) | **PATCH** /api/v2/custom_signature_definitions/{custom_signature_definition_id}/archive.json_api | A successful call to this API archives and returns a specific custom signature definition identified by the id parameter. The definition must have a status of active to be archived.
[**create**](CustomSignatureDefinitionsApi.md#create) | **POST** /api/v2/custom_signature_definitions.json_api | Create a(n) CustomSignatureDefinition
[**destroy**](CustomSignatureDefinitionsApi.md#destroy) | **DELETE** /api/v2/custom_signature_definitions/{id}.json_api | Remove a(n) CustomSignatureDefinition
[**list**](CustomSignatureDefinitionsApi.md#list) | **PUT** /api/v2/custom_signature_definitions.json_api | Get a list of CustomSignatureDefinitions
[**show**](CustomSignatureDefinitionsApi.md#show) | **GET** /api/v2/custom_signature_definitions/{id}.json_api | Show a single CustomSignatureDefinition
[**update**](CustomSignatureDefinitionsApi.md#update) | **PATCH** /api/v2/custom_signature_definitions/{id}.json_api | Update a(n) CustomSignatureDefinition


# **activate**
> CustomSignatureDefinition activate(custom_signature_definition_id)

A successful call to this API marks the definition for activation.  The definition will go into the 'validating' state and will be tested before activating. The definition must have a status of editable to be activated.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_definition_id = 56 # Integer | ID of Custom Signature Definition


begin
  #A successful call to this API marks the definition for activation.  The definition will go into the 'validating' state and will be tested before activating. The definition must have a status of editable to be activated.
  result = api_instance.activate(custom_signature_definition_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->activate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_definition_id** | **Integer**| ID of Custom Signature Definition | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **archive**
> CustomSignatureDefinition archive(custom_signature_definition_id)

A successful call to this API archives and returns a specific custom signature definition identified by the id parameter. The definition must have a status of active to be archived.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_definition_id = 56 # Integer | ID of Custom Signature Definition


begin
  #A successful call to this API archives and returns a specific custom signature definition identified by the id parameter. The definition must have a status of active to be archived.
  result = api_instance.archive(custom_signature_definition_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->archive: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_definition_id** | **Integer**| ID of Custom Signature Definition | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> CustomSignatureDefinition create(custom_signature_id)

Create a(n) CustomSignatureDefinition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_id = 56 # Integer | ID of the custom signature this definition belongs to


begin
  #Create a(n) CustomSignatureDefinition
  result = api_instance.create(custom_signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_id** | **Integer**| ID of the custom signature this definition belongs to | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) CustomSignatureDefinition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | CustomSignatureDefinition ID


begin
  #Remove a(n) CustomSignatureDefinition
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignatureDefinition ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of CustomSignatureDefinitions

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of CustomSignatureDefinitions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->list: #{e}"
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
> CustomSignatureDefinition show(id, opts)

Show a single CustomSignatureDefinition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | CustomSignatureDefinition ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single CustomSignatureDefinition
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignatureDefinition ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> CustomSignatureDefinition update(id, code, language)

Update a(n) CustomSignatureDefinition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | CustomSignatureDefinition ID

code = "code_example" # String | The code for this definition

language = "language_example" # String | The language of the definition. Valid values are ruby, javascript


begin
  #Update a(n) CustomSignatureDefinition
  result = api_instance.update(id, code, language)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignatureDefinition ID | 
 **code** | **String**| The code for this definition | 
 **language** | **String**| The language of the definition. Valid values are ruby, javascript | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



