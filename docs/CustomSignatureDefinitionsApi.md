# ESP::CustomSignatureDefinitionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate**](CustomSignatureDefinitionsApi.md#activate) | **PATCH** /api/v2/custom_signature_definitions/{custom_signature_definition_id}/activate.json_api | Activate a Custom Signature Definition
[**archive**](CustomSignatureDefinitionsApi.md#archive) | **PATCH** /api/v2/custom_signature_definitions/{custom_signature_definition_id}/archive.json_api | Archive a Custom Signature Definition
[**create**](CustomSignatureDefinitionsApi.md#create) | **POST** /api/v2/custom_signature_definitions.json_api | Create a(n) Custom Signature Definition
[**delete**](CustomSignatureDefinitionsApi.md#delete) | **DELETE** /api/v2/custom_signature_definitions/{id}.json_api | Delete a(n) Custom Signature Definition
[**list**](CustomSignatureDefinitionsApi.md#list) | **PUT** /api/v2/custom_signature_definitions.json_api | Get a list of Custom Signature Definitions
[**show**](CustomSignatureDefinitionsApi.md#show) | **GET** /api/v2/custom_signature_definitions/{id}.json_api | Show a single Custom Signature Definition
[**update**](CustomSignatureDefinitionsApi.md#update) | **PATCH** /api/v2/custom_signature_definitions/{id}.json_api | Update a(n) Custom Signature Definition


# **activate**
> CustomSignatureDefinition activate(custom_signature_definition_id, opts)

Activate a Custom Signature Definition

A successful call to this API marks the definition for activation.  The definition will go into the 'validating' state and will be tested before activating. The definition must have a status of editable to be activated.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_definition_id = 56 # Integer | ID of Custom Signature Definition

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_signature, results See Including Objects for more information.
}

begin
  #Activate a Custom Signature Definition
  result = api_instance.activate(custom_signature_definition_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->activate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_definition_id** | **Integer**| ID of Custom Signature Definition | 
 **include** | **String**| Related objects that can be included in the response:  custom_signature, results See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **archive**
> CustomSignatureDefinition archive(custom_signature_definition_id, opts)

Archive a Custom Signature Definition

A successful call to this API archives and returns a specific custom signature definition identified by the id parameter. The definition must have a status of active to be archived.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_definition_id = 56 # Integer | ID of Custom Signature Definition

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_signature, results See Including Objects for more information.
}

begin
  #Archive a Custom Signature Definition
  result = api_instance.archive(custom_signature_definition_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->archive: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_definition_id** | **Integer**| ID of Custom Signature Definition | 
 **include** | **String**| Related objects that can be included in the response:  custom_signature, results See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> CustomSignatureDefinition create(custom_signature_id, opts)

Create a(n) Custom Signature Definition



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

custom_signature_id = 56 # Integer | ID of the custom signature this definition belongs to

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_signature, results See Including Objects for more information.
}

begin
  #Create a(n) Custom Signature Definition
  result = api_instance.create(custom_signature_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_signature_id** | **Integer**| ID of the custom signature this definition belongs to | 
 **include** | **String**| Related objects that can be included in the response:  custom_signature, results See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Custom Signature Definition



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) Custom Signature Definition
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Custom Signature Definitions



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, language, status, version_number]    Searchable Association: [custom_signature] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  custom_signature, results See Including Objects for more information.
}

begin
  #Get a list of Custom Signature Definitions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, language, status, version_number]    Searchable Association: [custom_signature] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  custom_signature, results See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> CustomSignatureDefinition show(id, opts)

Show a single Custom Signature Definition



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Custom Signature Definition ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_signature, results See Including Objects for more information.
}

begin
  #Show a single Custom Signature Definition
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature Definition ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_signature, results See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> CustomSignatureDefinition update(id, opts)

Update a(n) Custom Signature Definition



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignatureDefinitionsApi.new

id = 56 # Integer | Custom Signature Definition ID

opts = { 
  code: "code_example", # String | The code for this definition
  language: "language_example", # String | The language of the definition. Valid values are ruby, javascript
  include: "include_example" # String | Related objects that can be included in the response:  custom_signature, results See Including Objects for more information.
}

begin
  #Update a(n) Custom Signature Definition
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignatureDefinitionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Signature Definition ID | 
 **code** | **String**| The code for this definition | [optional] 
 **language** | **String**| The language of the definition. Valid values are ruby, javascript | [optional] 
 **include** | **String**| Related objects that can be included in the response:  custom_signature, results See Including Objects for more information. | [optional] 

### Return type

[**CustomSignatureDefinition**](CustomSignatureDefinition.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



