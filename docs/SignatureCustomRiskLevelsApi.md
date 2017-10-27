# ESP::SignatureCustomRiskLevelsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SignatureCustomRiskLevelsApi.md#create) | **POST** /api/v2/signature_custom_risk_levels.json_api | Create a(n) SignatureCustomRiskLevel
[**destroy**](SignatureCustomRiskLevelsApi.md#destroy) | **DELETE** /api/v2/signature_custom_risk_levels/{id}.json_api | Remove a(n) SignatureCustomRiskLevel
[**list**](SignatureCustomRiskLevelsApi.md#list) | **GET** /api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels.json_api | Get a list of SignatureCustomRiskLevels
[**show**](SignatureCustomRiskLevelsApi.md#show) | **GET** /api/v2/signature_custom_risk_levels/{id}.json_api | Show a single SignatureCustomRiskLevel
[**update**](SignatureCustomRiskLevelsApi.md#update) | **PATCH** /api/v2/signature_custom_risk_levels/{id}.json_api | Update a(n) SignatureCustomRiskLevel


# **create**
> SignatureCustomRiskLevel create(external_account_id, risk_level, signature_id)

Create a(n) SignatureCustomRiskLevel

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

risk_level = "risk_level_example" # String | The risk-level of the problem identified by the signature. Valid values are low, medium, high

signature_id = 56 # Integer | The signature ID this signature custom risk level is for


begin
  #Create a(n) SignatureCustomRiskLevel
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
 **risk_level** | **String**| The risk-level of the problem identified by the signature. Valid values are low, medium, high | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) SignatureCustomRiskLevel

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | SignatureCustomRiskLevel ID


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
 **id** | **Integer**| SignatureCustomRiskLevel ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(external_account_id, opts)

Get a list of SignatureCustomRiskLevels

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve

opts = { 
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of SignatureCustomRiskLevels
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
> SignatureCustomRiskLevel show(id, opts)

Show a single SignatureCustomRiskLevel

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | SignatureCustomRiskLevel ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single SignatureCustomRiskLevel
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| SignatureCustomRiskLevel ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> SignatureCustomRiskLevel update(id, external_account_id, risk_level, signature_id)

Update a(n) SignatureCustomRiskLevel

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | SignatureCustomRiskLevel ID

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

risk_level = "risk_level_example" # String | The risk-level of the problem identified by the signature. Valid values are low, medium, high

signature_id = 56 # Integer | The signature ID this signature custom risk level is for


begin
  #Update a(n) SignatureCustomRiskLevel
  result = api_instance.update(id, external_account_id, risk_level, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| SignatureCustomRiskLevel ID | 
 **external_account_id** | **Integer**| The ID of the external account this signature custom risk level is for | 
 **risk_level** | **String**| The risk-level of the problem identified by the signature. Valid values are low, medium, high | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



