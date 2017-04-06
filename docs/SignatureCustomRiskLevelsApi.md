# ESP::SignatureCustomRiskLevelsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SignatureCustomRiskLevelsApi.md#create) | **POST** /api/v2/signature_custom_risk_levels.json_api | Create a(n) Signature Custom Risk Level
[**destroy**](SignatureCustomRiskLevelsApi.md#destroy) | **DELETE** /api/v2/signature_custom_risk_levels/{id}.json_api | Remove a(n) Signature Custom Risk Level
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) Signature Custom Risk Level

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | Signature Custom Risk Level Id


begin
  #Remove a(n) Signature Custom Risk Level
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureCustomRiskLevelsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Signature Custom Risk Level Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



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
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
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
> SignatureCustomRiskLevel show(id, opts)

Show a single Signature Custom Risk Level

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureCustomRiskLevelsApi.new

id = 56 # Integer | Signature Custom Risk Level Id

opts = { 
  include: "include_example" # String | Included Objects
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
 **include** | **String**| Included Objects | [optional] 

### Return type

[**SignatureCustomRiskLevel**](SignatureCustomRiskLevel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



