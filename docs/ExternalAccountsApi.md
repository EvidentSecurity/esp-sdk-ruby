# ESP::ExternalAccountsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalAccountsApi.md#create) | **POST** /api/v2/external_accounts.json_api | Create a(n) External Account
[**destroy**](ExternalAccountsApi.md#destroy) | **DELETE** /api/v2/external_accounts/{id}.json_api | Remove a(n) ExternalAccount
[**list**](ExternalAccountsApi.md#list) | **PUT** /api/v2/external_accounts.json_api | Get a list of External Accounts
[**show**](ExternalAccountsApi.md#show) | **GET** /api/v2/external_accounts/{id}.json_api | Show a single External Account
[**update**](ExternalAccountsApi.md#update) | **PATCH** /api/v2/external_accounts/{id}.json_api | Update a(n) External Account


# **create**
> ExternalAccount create(team_id, arn, external_id, opts)

Create a(n) External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

team_id = 56 # Integer | The ID of the team the external account will belong to

arn = "arn_example" # String | Amazon Resource Name for the IAM role

external_id = "external_id_example" # String | External identifier set on the role

opts = { 
  name: "name_example" # String | The name for this external account
}

begin
  #Create a(n) External Account
  result = api_instance.create(team_id, arn, external_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **Integer**| The ID of the team the external account will belong to | 
 **arn** | **String**| Amazon Resource Name for the IAM role | 
 **external_id** | **String**| External identifier set on the role | 
 **name** | **String**| The name for this external account | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **destroy**
> ExternalAccount destroy(id)

Remove a(n) ExternalAccount

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | ExternalAccount Id


begin
  #Remove a(n) ExternalAccount
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ExternalAccount Id | 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, nickname, name] Matching Searchable Attributes: [nickname, name] Limited Searchable Attributes: [account_eq, arn_eq] Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, team, compliance_standards, disabled_signatures] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  organization,sub_organization,team,scan_intervals,disabled_signatures,credentials  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, nickname, name] Matching Searchable Attributes: [nickname, name] Limited Searchable Attributes: [account_eq, arn_eq] Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, team, compliance_standards, disabled_signatures] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  organization,sub_organization,team,scan_intervals,disabled_signatures,credentials  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> ExternalAccount show(id, opts)

Show a single External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  organization,sub_organization,team,scan_intervals,disabled_signatures,credentials  See Including Objects for more information.
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
 **id** | **Integer**| External Account Id | 
 **include** | **String**| Objects that can be included in the response:  organization,sub_organization,team,scan_intervals,disabled_signatures,credentials  See Including Objects for more information. | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **update**
> ExternalAccount update(id, arn, external_id, sub_organization_id, team_id, opts)

Update a(n) External Account

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ExternalAccountsApi.new

id = 56 # Integer | External Account Id

arn = "arn_example" # String | Amazon Resource Name for the IAM role

external_id = 56 # Integer | External identifier set on the role

sub_organization_id = 56 # Integer | The ID of the sub organization the external account will belong to

team_id = 56 # Integer | The ID of the team the external account will belong to

opts = { 
  name: "name_example" # String | The name for this external account
}

begin
  #Update a(n) External Account
  result = api_instance.update(id, arn, external_id, sub_organization_id, team_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ExternalAccountsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| External Account Id | 
 **arn** | **String**| Amazon Resource Name for the IAM role | 
 **external_id** | **Integer**| External identifier set on the role | 
 **sub_organization_id** | **Integer**| The ID of the sub organization the external account will belong to | 
 **team_id** | **Integer**| The ID of the team the external account will belong to | 
 **name** | **String**| The name for this external account | [optional] 

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



