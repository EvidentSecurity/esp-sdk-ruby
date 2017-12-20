# ESP::CustomComplianceStandardsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomComplianceStandardsApi.md#create) | **POST** /api/v2/custom_compliance_standards.json_api | Create a(n) Custom Compliance Standard
[**delete**](CustomComplianceStandardsApi.md#delete) | **DELETE** /api/v2/custom_compliance_standards/{id}.json_api | Delete a(n) Custom Compliance Standard
[**show**](CustomComplianceStandardsApi.md#show) | **GET** /api/v2/custom_compliance_standards/{id}.json_api | Show a single Custom Compliance Standard
[**update**](CustomComplianceStandardsApi.md#update) | **PATCH** /api/v2/custom_compliance_standards/{id}.json_api | Update a(n) Custom Compliance Standard


# **create**
> CustomComplianceStandard create(name, description, opts)

Create a(n) Custom Compliance Standard



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceStandardsApi.new

name = "name_example" # String | Name

description = "description_example" # String | The description for this Compliance Standard

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information.
}

begin
  #Create a(n) Custom Compliance Standard
  result = api_instance.create(name, description, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceStandardsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | 
 **description** | **String**| The description for this Compliance Standard | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceStandard**](CustomComplianceStandard.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Custom Compliance Standard



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceStandardsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) Custom Compliance Standard
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceStandardsApi->delete: #{e}"
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



# **show**
> CustomComplianceStandard show(id, opts)

Show a single Custom Compliance Standard



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceStandardsApi.new

id = 56 # Integer | Custom Compliance Standard ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information.
}

begin
  #Show a single Custom Compliance Standard
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceStandardsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Standard ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceStandard**](CustomComplianceStandard.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> CustomComplianceStandard update(id, opts)

Update a(n) Custom Compliance Standard



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomComplianceStandardsApi.new

id = 56 # Integer | Custom Compliance Standard ID

opts = { 
  name: "name_example", # String | Name
  description: "description_example", # String | The description for this Compliance Standard
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information.
}

begin
  #Update a(n) Custom Compliance Standard
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomComplianceStandardsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Custom Compliance Standard ID | 
 **name** | **String**| Name | [optional] 
 **description** | **String**| The description for this Compliance Standard | [optional] 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**CustomComplianceStandard**](CustomComplianceStandard.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



