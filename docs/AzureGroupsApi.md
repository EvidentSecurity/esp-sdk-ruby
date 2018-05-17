# ESP::AzureGroupsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_external_account**](AzureGroupsApi.md#add_external_account) | **POST** /api/v2/azure_groups/{azure_group_id}/memberships.json_api | Add an External Account to an Azure Group
[**create**](AzureGroupsApi.md#create) | **POST** /api/v2/azure_groups.json_api | Create a(n) Azure Group
[**delete**](AzureGroupsApi.md#delete) | **DELETE** /api/v2/azure_groups/{id}.json_api | Delete a(n) Azure Group
[**list**](AzureGroupsApi.md#list) | **PUT** /api/v2/azure_groups.json_api | Get a list of Azure Groups
[**remove_external_account**](AzureGroupsApi.md#remove_external_account) | **DELETE** /api/v2/azure_groups/{azure_group_id}/memberships/{external_account_id}.json_api | Remove an External Account from an Azure Group
[**show**](AzureGroupsApi.md#show) | **GET** /api/v2/azure_groups/{id}.json_api | Show a single Azure Group
[**update**](AzureGroupsApi.md#update) | **PATCH** /api/v2/azure_groups/{id}.json_api | Update a(n) Azure Group


# **add_external_account**
> ExternalAccount add_external_account(azure_group_id, external_account_id, opts)

Add an External Account to an Azure Group



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

azure_group_id = 56 # Integer | The ID of the Azure group associated with this memberhsip

external_account_id = 56 # Integer | The ID of the External Account associated with this memberhsip

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, suppressions, azure_group See Including Objects for more information.
}

begin
  #Add an External Account to an Azure Group
  result = api_instance.add_external_account(azure_group_id, external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->add_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azure_group_id** | **Integer**| The ID of the Azure group associated with this memberhsip | 
 **external_account_id** | **Integer**| The ID of the External Account associated with this memberhsip | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, suppressions, azure_group See Including Objects for more information. | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> AzureGroup create(name, opts)

Create a(n) Azure Group

The URL will only be returned once when the group is first created

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

name = "name_example" # String | Name

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information.
}

begin
  #Create a(n) Azure Group
  result = api_instance.create(name, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name | 
 **include** | **String**| Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information. | [optional] 

### Return type

[**AzureGroup**](AzureGroup.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Azure Group



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

id = 56 # Integer | Azure Group ID


begin
  #Delete a(n) Azure Group
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Azure Group ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Azure Groups



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [id, name] Searchable Associations: [organization, external_accounts] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of Azure Groups
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [id, name] Searchable Associations: [organization, external_accounts] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **remove_external_account**
> Meta remove_external_account(azure_group_id, external_account_id)

Remove an External Account from an Azure Group



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

azure_group_id = 56 # Integer | The ID of the Azure group associated with this memberhsip

external_account_id = 56 # Integer | The ID of the External Account associated with this memberhsip


begin
  #Remove an External Account from an Azure Group
  result = api_instance.remove_external_account(azure_group_id, external_account_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->remove_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **azure_group_id** | **Integer**| The ID of the Azure group associated with this memberhsip | 
 **external_account_id** | **Integer**| The ID of the External Account associated with this memberhsip | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> AzureGroup show(id, opts)

Show a single Azure Group



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

id = 56 # Integer | Azure Group ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information.
}

begin
  #Show a single Azure Group
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Azure Group ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information. | [optional] 

### Return type

[**AzureGroup**](AzureGroup.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> AzureGroup update(id, opts)

Update a(n) Azure Group



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AzureGroupsApi.new

id = 56 # Integer | Azure Group ID

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information.
  name: "name_example" # String | Name
}

begin
  #Update a(n) Azure Group
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AzureGroupsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Azure Group ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, external_accounts See Including Objects for more information. | [optional] 
 **name** | **String**| Name | [optional] 

### Return type

[**AzureGroup**](AzureGroup.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



