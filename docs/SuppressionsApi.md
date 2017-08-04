# ESP::SuppressionsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deactivate**](SuppressionsApi.md#deactivate) | **PATCH** /api/v2/suppressions/{id}/deactivate.json_api | A successful call to this API will deactivate a suppression identified by the id parameter.
[**list**](SuppressionsApi.md#list) | **PUT** /api/v2/suppressions.json_api | Get a list of Suppressions
[**show**](SuppressionsApi.md#show) | **GET** /api/v2/suppressions/{id}.json_api | Show a single Suppression
[**suppress_region**](SuppressionsApi.md#suppress_region) | **POST** /api/v2/suppressions/regions.json_api | A successful call to this API creates a new region suppression for the supplied regions . The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
[**suppress_region_from_alert**](SuppressionsApi.md#suppress_region_from_alert) | **POST** /api/v2/suppressions/alert/{alert_id}/regions.json_api | A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
[**suppress_signature**](SuppressionsApi.md#suppress_signature) | **POST** /api/v2/suppressions/signatures.json_api | A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.
[**suppress_signature_from_alert**](SuppressionsApi.md#suppress_signature_from_alert) | **POST** /api/v2/suppressions/alert/{alert_id}/signatures.json_api | A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.
[**suppress_unique_identifier_from_alert**](SuppressionsApi.md#suppress_unique_identifier_from_alert) | **POST** /api/v2/suppressions/alert/{alert_id}/unique_identifiers.json_api | A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.


# **deactivate**
> Suppression deactivate(id)

A successful call to this API will deactivate a suppression identified by the id parameter.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression Id


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
 **id** | **Integer**| Suppression Id | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, aasm_state, status, suppression_type, type_type, resource, reason] Matching Searchable Attributes: [suppression_type, type_type, resource, reason]  Sortable Attributes: [suppression_type, type_type, updated_at, created_at, id, aasm_state, status] Searchable Associations: [regions, created_by, user, type, signatures] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  organization,created_by,regions,external_accounts,signatures,custom_signatures  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, aasm_state, status, suppression_type, type_type, resource, reason] Matching Searchable Attributes: [suppression_type, type_type, resource, reason]  Sortable Attributes: [suppression_type, type_type, updated_at, created_at, id, aasm_state, status] Searchable Associations: [regions, created_by, user, type, signatures] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  organization,created_by,regions,external_accounts,signatures,custom_signatures  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> Suppression show(id, opts)

Show a single Suppression

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  organization,created_by,regions,external_accounts,signatures,custom_signatures  See Including Objects for more information.
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
 **id** | **Integer**| Suppression Id | 
 **include** | **String**| Objects that can be included in the response:  organization,created_by,regions,external_accounts,signatures,custom_signatures  See Including Objects for more information. | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **suppress_region**
> Suppression suppress_region(regions, external_account_ids, reason, resource)

A successful call to this API creates a new region suppression for the supplied regions . The body of the request must contain a json api compliant hash of attributes with type suppression/regions.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

regions = ["regions_example"] # Array<String> | An array of region names to suppress

external_account_ids = [56] # Array<Integer> | An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on

reason = "reason_example" # String | The reason for creating the suppression

resource = "resource_example" # String | The resource string this suppression will suppress alerts for


begin
  #A successful call to this API creates a new region suppression for the supplied regions . The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
  result = api_instance.suppress_region(regions, external_account_ids, reason, resource)
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
 **resource** | **String**| The resource string this suppression will suppress alerts for | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **suppress_region_from_alert**
> Suppression suppress_region_from_alert(alert_id, reason)

A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The id for the alert you want to create a suppression for

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
 **alert_id** | **Integer**| The id for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **suppress_signature**
> Suppression suppress_signature(regions, external_account_ids, reason, resource, opts)

A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

regions = ["regions_example"] # Array<String> | An array of region names to suppress

external_account_ids = [56] # Array<Integer> | An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on

reason = "reason_example" # String | The reason for creating the suppression

resource = "resource_example" # String | The resource string this suppression will suppress alerts for

opts = { 
  signature_ids: [56], # Array<Integer> | An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank
  custom_signature_ids: [56] # Array<Integer> | An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank
}

begin
  #A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.
  result = api_instance.suppress_signature(regions, external_account_ids, reason, resource, opts)
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
 **resource** | **String**| The resource string this suppression will suppress alerts for | 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **suppress_signature_from_alert**
> Suppression suppress_signature_from_alert(alert_id, reason)

A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The id for the alert you want to create a suppression for

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
 **alert_id** | **Integer**| The id for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **suppress_unique_identifier_from_alert**
> Suppression suppress_unique_identifier_from_alert(alert_id, reason)

A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The id for the alert you want to create a suppression for

reason = "reason_example" # String | The reason for creating the suppression


begin
  #A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.
  result = api_instance.suppress_unique_identifier_from_alert(alert_id, reason)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->suppress_unique_identifier_from_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The id for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 

### Return type

[**Suppression**](Suppression.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



