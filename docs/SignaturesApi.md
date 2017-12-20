# ESP::SignaturesApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SignaturesApi.md#list) | **PUT** /api/v2/signatures.json_api | Get a list of Signatures
[**list_disabled_external_accounts**](SignaturesApi.md#list_disabled_external_accounts) | **GET** /api/v2/signatures/{signature_id}/disabled_external_accounts.json_api | Get a list of disabled External Accounts for a signature
[**list_with_custom_risk_level_for_external_account**](SignaturesApi.md#list_with_custom_risk_level_for_external_account) | **PUT** /api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels.json_api | Get A list of Signatures with default and custom risk levels for an External Account
[**remove_custom_risk_level_for_external_account**](SignaturesApi.md#remove_custom_risk_level_for_external_account) | **DELETE** /api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels/{signature_id}.json_api | Remove a custom risk level to a Signature for an External Account
[**set_custom_risk_level_for_external_account**](SignaturesApi.md#set_custom_risk_level_for_external_account) | **POST** /api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels.json_api | Add a custom risk level to a Signature for an External Account
[**show**](SignaturesApi.md#show) | **GET** /api/v2/signatures/{id}.json_api | Show a single Signature
[**update_custom_risk_level_for_external_account**](SignaturesApi.md#update_custom_risk_level_for_external_account) | **PATCH** /api/v2/external_accounts/{external_account_id}/signature_custom_risk_levels/{signature_id}.json_api | Update a Signature&#39;s custom risk level for an External Account


# **list**
> PaginatedCollection list(opts)

Get a list of Signatures



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attribute: [service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Get a list of Signatures
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attribute: [service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_disabled_external_accounts**
> PaginatedCollection list_disabled_external_accounts(opts)

Get a list of disabled External Accounts for a signature



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, nickname, name] Matching Searchable Attributes: [nickname, name] Limited Searchable Attributes: [account_eq, arn_eq, provider_eq, subscription_id_eq] Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, team, compliance_standards, azure_group, disabled_signatures] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, azure_group, credentials See Including Objects for more information.
}

begin
  #Get a list of disabled External Accounts for a signature
  result = api_instance.list_disabled_external_accounts(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->list_disabled_external_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, nickname, name] Matching Searchable Attributes: [nickname, name] Limited Searchable Attributes: [account_eq, arn_eq, provider_eq, subscription_id_eq] Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, team, compliance_standards, azure_group, disabled_signatures] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, azure_group, credentials See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_with_custom_risk_level_for_external_account**
> PaginatedCollection list_with_custom_risk_level_for_external_account(external_account_id, opts)

Get A list of Signatures with default and custom risk levels for an External Account

Return only signatures that have a custom risk level set by searching with `filter:{custom_risk_level_present: 1}`

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example", # String | Related objects that can be included in the response:  service See Including Objects for more information.
  filter: {'key' => "filter_example"} # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attributes: [custom_risk_level_present, service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
}

begin
  #Get A list of Signatures with default and custom risk levels for an External Account
  result = api_instance.list_with_custom_risk_level_for_external_account(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->list_with_custom_risk_level_for_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to retrieve | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attributes: [custom_risk_level_present, service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_custom_risk_level_for_external_account**
> Meta remove_custom_risk_level_for_external_account(external_account_id, signature_id)

Remove a custom risk level to a Signature for an External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

signature_id = 56 # Integer | The signature ID this signature custom risk level is for


begin
  #Remove a custom risk level to a Signature for an External Account
  result = api_instance.remove_custom_risk_level_for_external_account(external_account_id, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->remove_custom_risk_level_for_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this signature custom risk level is for | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **set_custom_risk_level_for_external_account**
> Signature set_custom_risk_level_for_external_account(external_account_id, signature_id, risk_level, opts)

Add a custom risk level to a Signature for an External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

signature_id = 56 # Integer | The signature ID this signature custom risk level is for

risk_level = "risk_level_example" # String | The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Add a custom risk level to a Signature for an External Account
  result = api_instance.set_custom_risk_level_for_external_account(external_account_id, signature_id, risk_level, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->set_custom_risk_level_for_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this signature custom risk level is for | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 
 **risk_level** | **String**| The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high | 
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**Signature**](Signature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Signature show(id, opts)

Show a single Signature



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

id = 56 # Integer | Signature ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Show a single Signature
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Signature ID | 
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**Signature**](Signature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update_custom_risk_level_for_external_account**
> Signature update_custom_risk_level_for_external_account(external_account_id, signature_id, opts)

Update a Signature's custom risk level for an External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignaturesApi.new

external_account_id = 56 # Integer | The ID of the external account this signature custom risk level is for

signature_id = 56 # Integer | The signature ID this signature custom risk level is for

opts = { 
  risk_level: "risk_level_example", # String | The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Update a Signature's custom risk level for an External Account
  result = api_instance.update_custom_risk_level_for_external_account(external_account_id, signature_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignaturesApi->update_custom_risk_level_for_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this signature custom risk level is for | 
 **signature_id** | **Integer**| The signature ID this signature custom risk level is for | 
 **risk_level** | **String**| The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high | [optional] 
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**Signature**](Signature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



