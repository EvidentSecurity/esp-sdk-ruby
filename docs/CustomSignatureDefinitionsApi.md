# ESP::CustomSignatureDefinitionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate**](CustomSignatureDefinitionsApi.md#activate) | **PATCH** /api/v2/custom_signature_definitions/{custom_signature_definition_id}/activate.json_api | A successful call to this API activates and returns a specific custom signature definition identified by the id parameter. The definition must have a status of editable to be activated.
[**archive**](CustomSignatureDefinitionsApi.md#archive) | **PATCH** /api/v2/custom_signature_definitions/{custom_signature_definition_id}/archive.json_api | A successful call to this API archives and returns a specific custom signature definition identified by the id parameter. The definition must have a status of active to be archived.
[**create**](CustomSignatureDefinitionsApi.md#create) | **POST** /api/v2/custom_signature_definitions.json_api | Create a(n) Custom Signature/Definition
[**destroy**](CustomSignatureDefinitionsApi.md#destroy) | **DELETE** /api/v2/custom_signature_definitions/{id}.json_api | Remove a(n) CustomSignature::Definition
[**list**](CustomSignatureDefinitionsApi.md#list) | **PUT** /api/v2/custom_signature_definitions.json_api | Get a list of Custom Signature/Definitions
[**show**](CustomSignatureDefinitionsApi.md#show) | **GET** /api/v2/custom_signature_definitions/{id}.json_api | Show a single Custom Signature/Definition
[**update**](CustomSignatureDefinitionsApi.md#update) | **PATCH** /api/v2/custom_signature_definitions/{id}.json_api | Update a(n) Custom Signature/Definition


# **activate**
> CustomSignatureDefinition activate(custom_signature_definition_id)

A successful call to this API activates and returns a specific custom signature definition identified by the id parameter. The definition must have a status of editable to be activated.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_definition_id = 56 # Integer | Custom Signature Definition Id


begin
  #A successful call to this API activates and returns a specific custom signature definition identified by the id parameter. The definition must have a status of editable to be activated.
  result = api_instance.activate(custom_signature_definition_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->activate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_definition_id** | **Integer**| Custom Signature Definition Id | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **archive**
> CustomSignatureDefinition archive(custom_signature_definition_id)

A successful call to this API archives and returns a specific custom signature definition identified by the id parameter. The definition must have a status of active to be archived.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_definition_id = 56 # Integer | Custom Signature Definition Id


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
 **custom_signature_definition_id** | **Integer**| Custom Signature Definition Id | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **create**
> CustomSignatureDefinition create(custom_signature_id)

Create a(n) Custom Signature/Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_id = 56 # Integer | ID of the custom signature this definition should belong to.


begin
  #Create a(n) Custom Signature/Definition
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

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **destroy**
> CustomSignatureDefinition destroy(id)

Remove a(n) CustomSignature::Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | CustomSignature::Definition Id


begin
  #Remove a(n) CustomSignature::Definition
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignature::Definition Id | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Custom Signature/Definitions

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, language, status, version_number]    Searchable Association: [custom_signature] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  custom_signature,results  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Custom Signature/Definitions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, language, status, version_number]    Searchable Association: [custom_signature] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  custom_signature,results  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> CustomSignatureDefinition show(id, opts)

Show a single Custom Signature/Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Custom Signature/Definition Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  custom_signature,results  See Including Objects for more information.
}

begin
  #Show a single Custom Signature/Definition
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature/Definition Id | 
 **include** | **String**| Objects that can be included in the response:  custom_signature,results  See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **update**
> CustomSignatureDefinition update(id, code, language)

Update a(n) Custom Signature/Definition

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Custom Signature/Definition Id

code = "code_example" # String | The code for the definition

language = "language_example" # String | The language of the code


begin
  #Update a(n) Custom Signature/Definition
  result = api_instance.update(id, code, language)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature/Definition Id | 
 **code** | **String**| The code for the definition | 
 **language** | **String**| The language of the code | 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



