# ESP::CustomComplianceDomainsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomComplianceDomainsApi.md#create) | **POST** /api/v2/custom_compliance_domains.json_api | Create a(n) Custom Compliance Domain
[**delete**](CustomComplianceDomainsApi.md#delete) | **DELETE** /api/v2/custom_compliance_domains/{id}.json_api | Delete a(n) Custom Compliance Domain
[**show**](CustomComplianceDomainsApi.md#show) | **GET** /api/v2/custom_compliance_domains/{id}.json_api | Show a single Custom Compliance Domain
[**update**](CustomComplianceDomainsApi.md#update) | **PATCH** /api/v2/custom_compliance_domains/{id}.json_api | Update a(n) Custom Compliance Domain


# **create**
> CustomComplianceDomain create(custom_compliance_standard_id, identifier, name, opts)

Create a(n) Custom Compliance Domain



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceDomainsApi.new

custom_compliance_standard_id = 56 # Integer | The ID of the Custom Compliance Standard this custom domain belongs to

identifier = "identifier_example" # String | The identifier of this custom domain

name = "name_example" # String | Name

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_controls See Including Objects for more information.
  position: 56 # Integer | The position of this custom domain within the custom standard
}

begin
  #Create a(n) Custom Compliance Domain
  result = api_instance.create(custom_compliance_standard_id, identifier, name, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceDomainsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_compliance_standard_id** | **Integer**| The ID of the Custom Compliance Standard this custom domain belongs to | 
 **identifier** | **String**| The identifier of this custom domain | 
 **name** | **String**| Name | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_controls See Including Objects for more information. | [optional] 
 **position** | **Integer**| The position of this custom domain within the custom standard | [optional] 

### Return type

[**CustomComplianceDomain**](CustomComplianceDomain.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Custom Compliance Domain



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceDomainsApi.new

id = 56 # Integer | Custom Compliance Domain ID


begin
  #Delete a(n) Custom Compliance Domain
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceDomainsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Domain ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> CustomComplianceDomain show(id, opts)

Show a single Custom Compliance Domain



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceDomainsApi.new

id = 56 # Integer | Custom Compliance Domain ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_controls See Including Objects for more information.
}

begin
  #Show a single Custom Compliance Domain
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceDomainsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Domain ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceDomain**](CustomComplianceDomain.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> CustomComplianceDomain update(id, opts)

Update a(n) Custom Compliance Domain



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceDomainsApi.new

id = 56 # Integer | Custom Compliance Domain ID

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_controls See Including Objects for more information.
  custom_compliance_standard_id: 56, # Integer | The ID of the Custom Compliance Standard this custom domain belongs to
  identifier: "identifier_example", # String | The identifier of this custom domain
  name: "name_example", # String | Name
  position: 56 # Integer | The position of this custom domain within the custom standard
}

begin
  #Update a(n) Custom Compliance Domain
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceDomainsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Domain ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_standard, custom_compliance_controls See Including Objects for more information. | [optional] 
 **custom_compliance_standard_id** | **Integer**| The ID of the Custom Compliance Standard this custom domain belongs to | [optional] 
 **identifier** | **String**| The identifier of this custom domain | [optional] 
 **name** | **String**| Name | [optional] 
 **position** | **Integer**| The position of this custom domain within the custom standard | [optional] 

### Return type

[**CustomComplianceDomain**](CustomComplianceDomain.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



