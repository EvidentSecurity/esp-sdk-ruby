# ESP::SignatureCustomRiskLevelsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SignatureCustomRiskLevelsApi.md#create) | **POST** /api/v2/signature_custom_risk_levels.json_api | Create a(n) Signature Custom Risk Level
[**destroy**](SignatureCustomRiskLevelsApi.md#destroy) | **DELETE** /api/v2/signature_custom_risk_levels/{id}.json_api | Remove a(n) SignatureCustomRiskLevel
[**list**](SignatureCustomRiskLevelsApi.md#list) | **GET** /api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels.json_api | Get a list of Signature Custom Risk Levels
[**show**](SignatureCustomRiskLevelsApi.md#show) | **GET** /api/v2/signature_custom_risk_levels/{id}.json_api | Show a single Signature Custom Risk Level
[**update**](SignatureCustomRiskLevelsApi.md#update) | **PATCH** /api/v2/signature_custom_risk_levels/{id}.json_api | Update a(n) Signature Custom Risk Level


# **create**
> SignatureCustomRiskLevel create(external_account_id, risk_level, signature_id)

Create a(n) Signature Custom Risk Level

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

risk_level = "risk_level_example" # String | The risk-level of the problem identified by the signature. Valid values are Low, Medium, High

signature_id = 56 # Integer | The signature ID this signature custom risk level is for


begin
  #Create a(n) Signature Custom Risk Level
  result = api_instance.create(external_account_id, risk_level, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this signature custom risk level is for | 
 **risk_level** | **String**| The risk-level of the problem identified by the signature. Valid values are Low, Medium, High | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> SignatureCustomRiskLevel destroy(id)

Remove a(n) SignatureCustomRiskLevel

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | SignatureCustomRiskLevel Id


begin
  #Remove a(n) SignatureCustomRiskLevel
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| SignatureCustomRiskLevel Id | 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(external_account_id, opts)

Get a list of Signature Custom Risk Levels

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  external_account,signature  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Signature Custom Risk Levels
  result = api_instance.list(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to retrieve | 
 **include** | **String**| Objects that can be included in the response:  external_account,signature  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> SignatureCustomRiskLevel show(id, opts)

Show a single Signature Custom Risk Level

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | Signature Custom Risk Level Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  external_account,signature  See Including Objects for more information.
}

begin
  #Show a single Signature Custom Risk Level
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Signature Custom Risk Level Id | 
 **include** | **String**| Objects that can be included in the response:  external_account,signature  See Including Objects for more information. | [optional] 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> SignatureCustomRiskLevel update(id, external_account_id, risk_level, signature_id)

Update a(n) Signature Custom Risk Level

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | Signature Custom Risk Level Id

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

risk_level = "risk_level_example" # String | The risk-level of the problem identified by the signature. Valid values are Low, Medium, High

signature_id = 56 # Integer | The signature ID this signature custom risk level is for


begin
  #Update a(n) Signature Custom Risk Level
  result = api_instance.update(id, external_account_id, risk_level, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Signature Custom Risk Level Id | 
 **external_account_id** | **Integer**| The ID of the external account this signature custom risk level is for | 
 **risk_level** | **String**| The risk-level of the problem identified by the signature. Valid values are Low, Medium, High | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



