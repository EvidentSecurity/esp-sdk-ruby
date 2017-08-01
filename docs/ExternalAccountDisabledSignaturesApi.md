# ESP::ExternalAccountDisabledSignaturesApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalAccountDisabledSignaturesApi.md#create) | **POST** /api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api | A successful call to this API will disable a signature for an external account.
[**destroy**](ExternalAccountDisabledSignaturesApi.md#destroy) | **DELETE** /api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api | A successful call to this API will remove a signature from the disabled signature list on an external account.
[**list**](ExternalAccountDisabledSignaturesApi.md#list) | **GET** /api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api | A successful call to this API returns all the disabled signatures of the associated external account, identified by the external_account_id parameter.
[**update**](ExternalAccountDisabledSignaturesApi.md#update) | **PATCH** /api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api | A successful call to this API will update the disabled signatures on an external account.


# **create**
> SuccessObject create(external_account_id, signature_id)

A successful call to this API will disable a signature for an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountDisabledSignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account to disable a signature on.

signature_id = 56 # Integer | The ID of the signature to disable


begin
  #A successful call to this API will disable a signature for an external account.
  result = api_instance.create(external_account_id, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountDisabledSignaturesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to disable a signature on. | 
 **signature_id** | **Integer**| The ID of the signature to disable | 

### Return type

[**SuccessObject**](SuccessObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **destroy**
> SuccessObject destroy(external_account_id, signature_id)

A successful call to this API will remove a signature from the disabled signature list on an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountDisabledSignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account to enable the signature on.

signature_id = 56 # Integer | The ID of the signature to enable


begin
  #A successful call to this API will remove a signature from the disabled signature list on an external account.
  result = api_instance.destroy(external_account_id, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountDisabledSignaturesApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to enable the signature on. | 
 **signature_id** | **Integer**| The ID of the signature to enable | 

### Return type

[**SuccessObject**](SuccessObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(external_account_id, opts)

A successful call to this API returns all the disabled signatures of the associated external account, identified by the external_account_id parameter.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountDisabledSignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve the disabled signatures for.

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution]  Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  service,disabled_external_accounts  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the disabled signatures of the associated external account, identified by the external_account_id parameter.
  result = api_instance.list(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountDisabledSignaturesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to retrieve the disabled signatures for. | 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution]  Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  service,disabled_external_accounts  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **update**
> ExternalAccount update(external_account_id, disabled_signature_ids)

A successful call to this API will update the disabled signatures on an external account.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountDisabledSignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account to update the disabled signatures of.

disabled_signature_ids = [56] # Array<Integer> | An array of all the signatures to disable on the external account.


begin
  #A successful call to this API will update the disabled signatures on an external account.
  result = api_instance.update(external_account_id, disabled_signature_ids)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountDisabledSignaturesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to update the disabled signatures of. | 
 **disabled_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| An array of all the signatures to disable on the external account. | 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



