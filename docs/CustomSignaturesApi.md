# ESP::CustomSignaturesApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CustomSignaturesApi.md#create) | **POST** /api/v2/custom_signatures.json_api | Create a(n) CustomSignature
[**destroy**](CustomSignaturesApi.md#destroy) | **DELETE** /api/v2/custom_signatures/{id}.json_api | Remove a(n) CustomSignature
[**list**](CustomSignaturesApi.md#list) | **PUT** /api/v2/custom_signatures.json_api | Get a list of CustomSignatures
[**show**](CustomSignaturesApi.md#show) | **GET** /api/v2/custom_signatures/{id}.json_api | Show a single CustomSignature
[**update**](CustomSignaturesApi.md#update) | **PATCH** /api/v2/custom_signatures/{id}.json_api | Update a(n) CustomSignature


# **create**
> CustomSignature create(identifier, name, risk_level, team_ids, opts)

Create a(n) CustomSignature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

identifier = "identifier_example" # String | The identifier to use for the custom signature. Common format is AWS:- such as AWS:IAM-001

name = "name_example" # String | The name of the custom signature

risk_level = "risk_level_example" # String | The risk-level of the problem identified by the custom signature. Valid values are low, medium, high

team_ids = [56] # Array<Integer> | The team IDs this custom signature should run for. If no teams are selected the custom signature will not be run.

opts = { 
  description: "description_example", # String | The description of the custom signature that is displayed on alerts
  resolution: "resolution_example" # String | Details for how to resolve this custom signature that is displayed on alerts
}

begin
  #Create a(n) CustomSignature
  result = api_instance.create(identifier, name, risk_level, team_ids, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| The identifier to use for the custom signature. Common format is AWS:- such as AWS:IAM-001 | 
 **name** | **String**| The name of the custom signature | 
 **risk_level** | **String**| The risk-level of the problem identified by the custom signature. Valid values are low, medium, high | 
 **team_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The team IDs this custom signature should run for. If no teams are selected the custom signature will not be run. | 
 **description** | **String**| The description of the custom signature that is displayed on alerts | [optional] 
 **resolution** | **String**| Details for how to resolve this custom signature that is displayed on alerts | [optional] 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) CustomSignature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

id = 56 # Integer | CustomSignature ID


begin
  #Remove a(n) CustomSignature
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignature ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of CustomSignatures

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of CustomSignatures
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->list: #{e}"
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
> CustomSignature show(id, opts)

Show a single CustomSignature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

id = 56 # Integer | CustomSignature ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single CustomSignature
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignature ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> CustomSignature update(id, opts)

Update a(n) CustomSignature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::CustomSignaturesApi.new

id = 56 # Integer | CustomSignature ID

opts = { 
  description: "description_example", # String | The description of the custom signature that is displayed on alerts
  identifier: "identifier_example", # String | The identifier to use for the custom signature. Common format is AWS:- such as AWS:IAM-001
  name: "name_example", # String | The name of the custom signature
  resolution: "resolution_example", # String | Details for how to resolve this custom signature that is displayed on alerts
  risk_level: "risk_level_example", # String | The risk-level of the problem identified by the custom signature. Valid values are low, medium, high
  team_ids: [56] # Array<Integer> | The team IDs this custom signature should run for. If no teams are selected the custom signature will not be run.
}

begin
  #Update a(n) CustomSignature
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling CustomSignaturesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| CustomSignature ID | 
 **description** | **String**| The description of the custom signature that is displayed on alerts | [optional] 
 **identifier** | **String**| The identifier to use for the custom signature. Common format is AWS:- such as AWS:IAM-001 | [optional] 
 **name** | **String**| The name of the custom signature | [optional] 
 **resolution** | **String**| Details for how to resolve this custom signature that is displayed on alerts | [optional] 
 **risk_level** | **String**| The risk-level of the problem identified by the custom signature. Valid values are low, medium, high | [optional] 
 **team_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The team IDs this custom signature should run for. If no teams are selected the custom signature will not be run. | [optional] 

### Return type

[**CustomSignature**](CustomSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



