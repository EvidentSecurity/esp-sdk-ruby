# ESP::SuppressionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**deactivate**](SuppressionsApi.md#deactivate) | **PATCH** /api/v2/suppressions/{id}/deactivate.json_api | A successful call to this API will deactivate a suppression identified by the id parameter.
[**list**](SuppressionsApi.md#list) | **PUT** /api/v2/suppressions.json_api | Get a list of Suppressions
[**show**](SuppressionsApi.md#show) | **GET** /api/v2/suppressions/{id}.json_api | Show a single Suppression
[**suppress_region**](SuppressionsApi.md#suppress_region) | **POST** /api/v2/suppressions/regions.json_api | A successful call to this API creates a new region suppression for the supplied regions. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
[**suppress_region_from_alert**](SuppressionsApi.md#suppress_region_from_alert) | **POST** /api/v2/suppressions/alert/{alert_id}/regions.json_api | A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
[**suppress_signature**](SuppressionsApi.md#suppress_signature) | **POST** /api/v2/suppressions/signatures.json_api | A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.
[**suppress_signature_from_alert**](SuppressionsApi.md#suppress_signature_from_alert) | **POST** /api/v2/suppressions/alert/{alert_id}/signatures.json_api | A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.
[**suppress_unique_identifier_from_alert**](SuppressionsApi.md#suppress_unique_identifier_from_alert) | **POST** /api/v2/suppressions/alert/{alert_id}/unique_identifiers.json_api | A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/unique_identifier.


# **deactivate**
> Suppression deactivate(id)

A successful call to this API will deactivate a suppression identified by the id parameter.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression ID


begin
  #A successful call to this API will deactivate a suppression identified by the id parameter.
  result = api_instance.deactivate(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->deactivate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Suppression ID | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Suppressions

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of Suppressions
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->list: #{e}"
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
> Suppression show(id, opts)

Show a single Suppression

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single Suppression
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Suppression ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **suppress_region**
> Suppression suppress_region(regions, external_account_ids, reason, opts)

A successful call to this API creates a new region suppression for the supplied regions. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

regions = ["regions_example"] # Array<String> | An array of region names to suppress

external_account_ids = [56] # Array<Integer> | An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on

reason = "reason_example" # String | The reason for creating the suppression

opts = { 
  resource: "resource_example" # String | The resource string this suppression will suppress alerts for
}

begin
  #A successful call to this API creates a new region suppression for the supplied regions. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
  result = api_instance.suppress_region(regions, external_account_ids, reason, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->suppress_region: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regions** | [**Array&lt;String&gt;**](String.md)| An array of region names to suppress | 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on | 
 **reason** | **String**| The reason for creating the suppression | 
 **resource** | **String**| The resource string this suppression will suppress alerts for | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **suppress_region_from_alert**
> Suppression suppress_region_from_alert(alert_id, reason)

A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The ID for the alert you want to create a suppression for

reason = "reason_example" # String | The reason for creating the suppression


begin
  #A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
  result = api_instance.suppress_region_from_alert(alert_id, reason)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->suppress_region_from_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **suppress_signature**
> Suppression suppress_signature(regions, external_account_ids, reason, opts)

A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

regions = ["regions_example"] # Array<String> | An array of region names to suppress

external_account_ids = [56] # Array<Integer> | An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on

reason = "reason_example" # String | The reason for creating the suppression

opts = { 
  signature_ids: [56], # Array<Integer> | An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank.
  custom_signature_ids: [56], # Array<Integer> | An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank.
  resource: "resource_example" # String | The resource string this suppression will suppress alerts for
}

begin
  #A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.
  result = api_instance.suppress_signature(regions, external_account_ids, reason, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->suppress_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regions** | [**Array&lt;String&gt;**](String.md)| An array of region names to suppress | 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on | 
 **reason** | **String**| The reason for creating the suppression | 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank. | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank. | [optional] 
 **resource** | **String**| The resource string this suppression will suppress alerts for | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **suppress_signature_from_alert**
> Suppression suppress_signature_from_alert(alert_id, reason)

A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The ID for the alert you want to create a suppression for

reason = "reason_example" # String | The reason for creating the suppression


begin
  #A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.
  result = api_instance.suppress_signature_from_alert(alert_id, reason)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->suppress_signature_from_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **suppress_unique_identifier_from_alert**
> Suppression suppress_unique_identifier_from_alert(alert_id, reason)

A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/unique_identifier.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The ID for the alert you want to create a suppression for

reason = "reason_example" # String | The reason for creating the suppression


begin
  #A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/unique_identifier.
  result = api_instance.suppress_unique_identifier_from_alert(alert_id, reason)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->suppress_unique_identifier_from_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



