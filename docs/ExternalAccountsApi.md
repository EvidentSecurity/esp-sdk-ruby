# ESP::ExternalAccountsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_compliance_standard**](ExternalAccountsApi.md#add_compliance_standard) | **POST** /api/v2/external_accounts/{external_account_id}/compliance_standards.json_api | Add a compliance standard to an external account
[**add_custom_compliance_standard**](ExternalAccountsApi.md#add_custom_compliance_standard) | **POST** /api/v2/external_accounts/{external_account_id}/custom_compliance_standards.json_api | Add a custom compliance standard to an external account
[**add_disabled_signature**](ExternalAccountsApi.md#add_disabled_signature) | **POST** /api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api | Disable a signature for an external account
[**delete**](ExternalAccountsApi.md#delete) | **DELETE** /api/v2/external_accounts/{id}.json_api | Delete a(n) External Account
[**list**](ExternalAccountsApi.md#list) | **PUT** /api/v2/external_accounts.json_api | Get a list of External Accounts
[**list_compliance_standards**](ExternalAccountsApi.md#list_compliance_standards) | **GET** /api/v2/external_accounts/{external_account_id}/compliance_standards.json_api | Get a list of compliance standards for an external account
[**list_custom_compliance_standards**](ExternalAccountsApi.md#list_custom_compliance_standards) | **GET** /api/v2/external_accounts/{external_account_id}/custom_compliance_standards.json_api | Get a list of custom compliance standards for an external account
[**list_disabled_signatures**](ExternalAccountsApi.md#list_disabled_signatures) | **PUT** /api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api | Get a list all the disabled signatures for an external account
[**remove_compliance_standard**](ExternalAccountsApi.md#remove_compliance_standard) | **DELETE** /api/v2/external_accounts/{external_account_id}/compliance_standards/{compliance_standard_id}.json_api | Remove a compliance standard from an external account
[**remove_custom_compliance_standard**](ExternalAccountsApi.md#remove_custom_compliance_standard) | **DELETE** /api/v2/external_accounts/{external_account_id}/custom_compliance_standards/{custom_compliance_standard_id}.json_api | Remove a custom compliance standard from an external account
[**remove_disabled_signature**](ExternalAccountsApi.md#remove_disabled_signature) | **DELETE** /api/v2/external_accounts/{external_account_id}/disabled_signatures/{signature_id}.json_api | Re-enable a signature for an external account
[**show**](ExternalAccountsApi.md#show) | **GET** /api/v2/external_accounts/{id}.json_api | Show a single External Account


# **add_compliance_standard**
> ComplianceStandard add_compliance_standard(external_account_id, compliance_standard_id, opts)

Add a compliance standard to an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account this compliance standard belongs to

compliance_standard_id = 56 # Integer | The ID of the compliance standard that belongs to this external account

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  compliance_domains, compliance_controls See Including Objects for more information.
}

begin
  #Add a compliance standard to an external account
  result = api_instance.add_compliance_standard(external_account_id, compliance_standard_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->add_compliance_standard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this compliance standard belongs to | 
 **compliance_standard_id** | **Integer**| The ID of the compliance standard that belongs to this external account | 
 **include** | **String**| Related objects that can be included in the response:  compliance_domains, compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**ComplianceStandard**](ComplianceStandard.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **add_custom_compliance_standard**
> Meta add_custom_compliance_standard(external_account_id, custom_compliance_standard_id)

Add a custom compliance standard to an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account this custom compliance standard belongs to

custom_compliance_standard_id = 56 # Integer | The ID of the custom compliance standard that belongs to this external account


begin
  #Add a custom compliance standard to an external account
  result = api_instance.add_custom_compliance_standard(external_account_id, custom_compliance_standard_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->add_custom_compliance_standard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this custom compliance standard belongs to | 
 **custom_compliance_standard_id** | **Integer**| The ID of the custom compliance standard that belongs to this external account | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **add_disabled_signature**
> Signature add_disabled_signature(external_account_id, signature_id, opts)

Disable a signature for an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account to disable a signature on

signature_id = 56 # Integer | The ID of the signature to disable

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Disable a signature for an external account
  result = api_instance.add_disabled_signature(external_account_id, signature_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->add_disabled_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to disable a signature on | 
 **signature_id** | **Integer**| The ID of the signature to disable | 
 **include** | **String**| Related objects that can be included in the response:  service See Including Objects for more information. | [optional] 

### Return type

[**Signature**](Signature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) External Account
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->delete: #{e}"
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



# **list**
> PaginatedCollection list(opts)

Get a list of External Accounts



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, nickname, name] Matching Searchable Attributes: [nickname, name] Limited Searchable Attributes: [account_eq, arn_eq, provider_eq, subscription_id_eq] Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, team, compliance_standards, azure_group, disabled_signatures] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, azure_group, credentials See Including Objects for more information.
}

begin
  #Get a list of External Accounts
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->list: #{e}"
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



# **list_compliance_standards**
> PaginatedCollection list_compliance_standards(external_account_id, opts)

Get a list of compliance standards for an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account this compliance standard belongs to

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  compliance_domains, compliance_controls See Including Objects for more information.
}

begin
  #Get a list of compliance standards for an external account
  result = api_instance.list_compliance_standards(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->list_compliance_standards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this compliance standard belongs to | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  compliance_domains, compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_custom_compliance_standards**
> PaginatedCollection list_custom_compliance_standards(external_account_id, opts)

Get a list of custom compliance standards for an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account this custom compliance standard belongs to

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information.
}

begin
  #Get a list of custom compliance standards for an external account
  result = api_instance.list_custom_compliance_standards(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->list_custom_compliance_standards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this custom compliance standard belongs to | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_domains, custom_compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_disabled_signatures**
> PaginatedCollection list_disabled_signatures(external_account_id, opts)

Get a list all the disabled signatures for an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve the disabled signatures for

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attribute: [service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  service See Including Objects for more information.
}

begin
  #Get a list all the disabled signatures for an external account
  result = api_instance.list_disabled_signatures(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->list_disabled_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to retrieve the disabled signatures for | 
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



# **remove_compliance_standard**
> Meta remove_compliance_standard(external_account_id, compliance_standard_id)

Remove a compliance standard from an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account this compliance standard belongs to

compliance_standard_id = 56 # Integer | The ID of the compliance standard that belongs to this external account


begin
  #Remove a compliance standard from an external account
  result = api_instance.remove_compliance_standard(external_account_id, compliance_standard_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->remove_compliance_standard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this compliance standard belongs to | 
 **compliance_standard_id** | **Integer**| The ID of the compliance standard that belongs to this external account | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_custom_compliance_standard**
> Meta remove_custom_compliance_standard(external_account_id, custom_compliance_standard_id)

Remove a custom compliance standard from an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account this custom compliance standard belongs to

custom_compliance_standard_id = 56 # Integer | The ID of the custom compliance standard that belongs to this external account


begin
  #Remove a custom compliance standard from an external account
  result = api_instance.remove_custom_compliance_standard(external_account_id, custom_compliance_standard_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->remove_custom_compliance_standard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this custom compliance standard belongs to | 
 **custom_compliance_standard_id** | **Integer**| The ID of the custom compliance standard that belongs to this external account | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_disabled_signature**
> Meta remove_disabled_signature(external_account_id, signature_id)

Re-enable a signature for an external account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

external_account_id = 56 # Integer | The ID of the external account to enable a signature on

signature_id = 56 # Integer | The ID of the signature to enable


begin
  #Re-enable a signature for an external account
  result = api_instance.remove_disabled_signature(external_account_id, signature_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->remove_disabled_signature: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to enable a signature on | 
 **signature_id** | **Integer**| The ID of the signature to enable | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ExternalAccount show(id, opts)

Show a single External Account



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, azure_group, credentials See Including Objects for more information.
}

begin
  #Show a single External Account
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, azure_group, credentials See Including Objects for more information. | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



