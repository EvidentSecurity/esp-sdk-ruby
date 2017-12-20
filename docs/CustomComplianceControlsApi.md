# ESP::CustomComplianceControlsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_custom_signature**](CustomComplianceControlsApi.md#add_custom_signature) | **POST** /api/v2/custom_compliance_controls/{custom_compliance_control_id}/custom_signatures.json_api | Add a Custom Signature to a Custom Compliance Control
[**add_signature**](CustomComplianceControlsApi.md#add_signature) | **POST** /api/v2/custom_compliance_controls/{custom_compliance_control_id}/signatures.json_api | Add a Signature to a Custom Compliance Control
[**create**](CustomComplianceControlsApi.md#create) | **POST** /api/v2/custom_compliance_controls.json_api | Create a(n) Custom Compliance Control
[**delete**](CustomComplianceControlsApi.md#delete) | **DELETE** /api/v2/custom_compliance_controls/{id}.json_api | Delete a(n) Custom Compliance Control
[**list_custom_signatures**](CustomComplianceControlsApi.md#list_custom_signatures) | **GET** /api/v2/custom_compliance_controls/{custom_compliance_control_id}/custom_signatures.json_api | Get a list of Custom Signatures for a Custom Compliance Control
[**list_signatures**](CustomComplianceControlsApi.md#list_signatures) | **GET** /api/v2/custom_compliance_controls/{custom_compliance_control_id}/signatures.json_api | Get a list of Signatures for a Custom Compliance Control
[**remove_custom_signature**](CustomComplianceControlsApi.md#remove_custom_signature) | **DELETE** /api/v2/custom_compliance_controls/{custom_compliance_control_id}/custom_signatures/{custom_signature_id}.json_api | Remove a Custom Signature from a Custom Compliance Control
[**remove_signature**](CustomComplianceControlsApi.md#remove_signature) | **DELETE** /api/v2/custom_compliance_controls/{custom_compliance_control_id}/signatures/{signature_id}.json_api | Remove a Signature from a Custom Compliance Control
[**show**](CustomComplianceControlsApi.md#show) | **GET** /api/v2/custom_compliance_controls/{id}.json_api | Show a single Custom Compliance Control
[**update**](CustomComplianceControlsApi.md#update) | **PATCH** /api/v2/custom_compliance_controls/{id}.json_api | Update a(n) Custom Compliance Control


# **add_custom_signature**
> CustomSignature add_custom_signature(custom_compliance_control_id, custom_signature_id, opts)

Add a Custom Signature to a Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

custom_compliance_control_id = 56 # Integer | The ID of the Custom Compliance Control this custom signature belongs to

custom_signature_id = 56 # Integer | The ID of the custom signature that belongs to this custom control

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, teams, external_accounts, definitions See Including Objects for more information.
}

begin
  #Add a Custom Signature to a Custom Compliance Control
  result = api_instance.add_custom_signature(custom_compliance_control_id, custom_signature_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->add_custom_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_control_id** | **Integer**| The ID of the Custom Compliance Control this custom signature belongs to | 
 **custom_signature_id** | **Integer**| The ID of the custom signature that belongs to this custom control | 
 **include** | **String**| Related objects that can be included in the response:  organization, teams, external_accounts, definitions See Including Objects for more information. | [optional] 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **add_signature**
> Signature add_signature(custom_compliance_control_id, signature_id, opts)

Add a Signature to a Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

custom_compliance_control_id = 56 # Integer | The ID of the Custom Compliance Control this signature belongs to

signature_id = 56 # Integer | The ID of the signature that belongs to this custom control

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Add a Signature to a Custom Compliance Control
  result = api_instance.add_signature(custom_compliance_control_id, signature_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->add_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_control_id** | **Integer**| The ID of the Custom Compliance Control this signature belongs to | 
 **signature_id** | **Integer**| The ID of the signature that belongs to this custom control | 
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**Signature**](Signature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> CustomComplianceControl create(identifier, custom_compliance_domain_id, name, opts)

Create a(n) Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

identifier = "identifier_example" # String | The identifier of this custom control

custom_compliance_domain_id = 56 # Integer | The ID of the Custom Compliance Domain this custom control belongs to

name = "name_example" # String | Name

opts = { 
  description: "description_example", # String | The description for this custom control
  position: 56, # Integer | The position of this custom control within the custom domain
  signature_ids: [56], # Array<Integer> | An array of signatures identified by signature_id that belong to this custom control
  custom_signature_ids: [56], # Array<Integer> | An array of custom signatures identified by custom_signature_id that belong to this custom control
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information.
}

begin
  #Create a(n) Custom Compliance Control
  result = api_instance.create(identifier, custom_compliance_domain_id, name, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| The identifier of this custom control | 
 **custom_compliance_domain_id** | **Integer**| The ID of the Custom Compliance Domain this custom control belongs to | 
 **name** | **String**| Name | 
 **description** | **String**| The description for this custom control | [optional] 
 **position** | **Integer**| The position of this custom control within the custom domain | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of signatures identified by signature_id that belong to this custom control | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of custom signatures identified by custom_signature_id that belong to this custom control | [optional] 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceControl**](CustomComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) Custom Compliance Control
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->delete: #{e}"
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



# **list_custom_signatures**
> PaginatedCollection list_custom_signatures(custom_compliance_control_id, opts)

Get a list of Custom Signatures for a Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

custom_compliance_control_id = 56 # Integer | The ID of the Custom Compliance Control this custom signature belongs to

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  organization, teams, external_accounts, definitions See Including Objects for more information.
}

begin
  #Get a list of Custom Signatures for a Custom Compliance Control
  result = api_instance.list_custom_signatures(custom_compliance_control_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->list_custom_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_control_id** | **Integer**| The ID of the Custom Compliance Control this custom signature belongs to | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  organization, teams, external_accounts, definitions See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_signatures**
> PaginatedCollection list_signatures(custom_compliance_control_id, opts)

Get a list of Signatures for a Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

custom_compliance_control_id = 56 # Integer | The ID of the Custom Compliance Control this signature belongs to

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Get a list of Signatures for a Custom Compliance Control
  result = api_instance.list_signatures(custom_compliance_control_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->list_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_control_id** | **Integer**| The ID of the Custom Compliance Control this signature belongs to | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_custom_signature**
> Meta remove_custom_signature(custom_compliance_control_id, custom_signature_id)

Remove a Custom Signature from a Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

custom_compliance_control_id = 56 # Integer | The ID of the Custom Compliance Control this custom signature belongs to

custom_signature_id = 56 # Integer | The ID of the custom signature that belongs to this custom control


begin
  #Remove a Custom Signature from a Custom Compliance Control
  result = api_instance.remove_custom_signature(custom_compliance_control_id, custom_signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->remove_custom_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_control_id** | **Integer**| The ID of the Custom Compliance Control this custom signature belongs to | 
 **custom_signature_id** | **Integer**| The ID of the custom signature that belongs to this custom control | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_signature**
> Meta remove_signature(custom_compliance_control_id, signature_id)

Remove a Signature from a Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

custom_compliance_control_id = 56 # Integer | The ID of the Custom Compliance Control this signature belongs to

signature_id = 56 # Integer | The ID of the signature that belongs to this custom control


begin
  #Remove a Signature from a Custom Compliance Control
  result = api_instance.remove_signature(custom_compliance_control_id, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->remove_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_control_id** | **Integer**| The ID of the Custom Compliance Control this signature belongs to | 
 **signature_id** | **Integer**| The ID of the signature that belongs to this custom control | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> CustomComplianceControl show(id, opts)

Show a single Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

id = 56 # Integer | Custom Compliance Control ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information.
}

begin
  #Show a single Custom Compliance Control
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Control ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceControl**](CustomComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> CustomComplianceControl update(id, opts)

Update a(n) Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceControlsApi.new

id = 56 # Integer | Custom Compliance Control ID

opts = { 
  identifier: "identifier_example", # String | The identifier of this custom control
  custom_compliance_domain_id: 56, # Integer | The ID of the Custom Compliance Domain this custom control belongs to
  description: "description_example", # String | The description for this custom control
  name: "name_example", # String | Name
  position: 56, # Integer | The position of this custom control within the custom domain
  signature_ids: [56], # Array<Integer> | An array of signatures identified by signature_id that belong to this custom control
  custom_signature_ids: [56], # Array<Integer> | An array of custom signatures identified by custom_signature_id that belong to this custom control
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information.
}

begin
  #Update a(n) Custom Compliance Control
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceControlsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Control ID | 
 **identifier** | **String**| The identifier of this custom control | [optional] 
 **custom_compliance_domain_id** | **Integer**| The ID of the Custom Compliance Domain this custom control belongs to | [optional] 
 **description** | **String**| The description for this custom control | [optional] 
 **name** | **String**| Name | [optional] 
 **position** | **Integer**| The position of this custom control within the custom domain | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of signatures identified by signature_id that belong to this custom control | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of custom signatures identified by custom_signature_id that belong to this custom control | [optional] 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_domain, signatures, custom_signatures See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceControl**](CustomComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



