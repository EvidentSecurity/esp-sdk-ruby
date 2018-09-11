# ESP::SuppressionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SuppressionsApi.md#create) | **POST** /api/v2/suppressions.json_api | Create a suppression
[**create_from_alert**](SuppressionsApi.md#create_from_alert) | **POST** /api/v2/suppressions/alerts.json_api | Creates a suppression from an alert
[**deactivate**](SuppressionsApi.md#deactivate) | **PATCH** /api/v2/suppressions/{id}/deactivate.json_api | Deactivate a suppression
[**list**](SuppressionsApi.md#list) | **PUT** /api/v2/suppressions.json_api | Get a list of Suppressions
[**show**](SuppressionsApi.md#show) | **GET** /api/v2/suppressions/{id}.json_api | Show a single Suppression
[**update**](SuppressionsApi.md#update) | **PATCH** /api/v2/suppressions/{id}.json_api | Update a(n) Suppression


# **create**
> Suppression create(external_account_ids, reason, regions, opts)

Create a suppression



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

external_account_ids = [56] # Array<Integer> | IDs of external accounts to be suppressed

reason = "reason_example" # String | The reason for the suppresion

regions = ["regions_example"] # Array<String> | Codes of regions to be suppressed

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  custom_signature_ids: [56], # Array<Integer> | IDs of custom signatures to be suppressed
  include_new_accounts: true, # BOOLEAN | When enabled, automatically adds new accounts to this suppression. This field can only be set by an organization level user.
  resource: "resource_example", # String | The resource string this suppression will suppress alerts for
  signature_ids: [56] # Array<Integer> | IDs of signatures to be suppressed
}

begin
  #Create a suppression
  result = api_instance.create(external_account_ids, reason, regions, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of external accounts to be suppressed | 
 **reason** | **String**| The reason for the suppresion | 
 **regions** | [**Array&lt;String&gt;**](String.md)| Codes of regions to be suppressed | 
 **include** | **String**| Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of custom signatures to be suppressed | [optional] 
 **include_new_accounts** | **BOOLEAN**| When enabled, automatically adds new accounts to this suppression. This field can only be set by an organization level user. | [optional] 
 **resource** | **String**| The resource string this suppression will suppress alerts for | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of signatures to be suppressed | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create_from_alert**
> Suppression create_from_alert(alert_id, reason, opts)

Creates a suppression from an alert

A successful call to this API creates a new suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of the suppression reason and an alert id.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

alert_id = 56 # Integer | The ID for the alert you want to create a suppression for

reason = "reason_example" # String | The reason for creating the suppression

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
}

begin
  #Creates a suppression from an alert
  result = api_instance.create_from_alert(alert_id, reason, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->create_from_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID for the alert you want to create a suppression for | 
 **reason** | **String**| The reason for creating the suppression | 
 **include** | **String**| Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **deactivate**
> Suppression deactivate(id, opts)

Deactivate a suppression



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
}

begin
  #Deactivate a suppression
  result = api_instance.deactivate(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->deactivate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Suppression ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 

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
  include: "include_example", # String | Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, aasm_state, status, suppression_type, resource, reason] Matching Searchable Attributes: [resource, reason]  Sortable Attributes: [updated_at, created_at, id, status] Searchable Associations: [regions, external_accounts, created_by, user, signatures, custom_signatures] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
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
 **include** | **String**| Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, aasm_state, status, suppression_type, resource, reason] Matching Searchable Attributes: [resource, reason]  Sortable Attributes: [updated_at, created_at, id, status] Searchable Associations: [regions, external_accounts, created_by, user, signatures, custom_signatures] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

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
  include: "include_example" # String | Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> Suppression update(id, opts)

Update a(n) Suppression



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SuppressionsApi.new

id = 56 # Integer | Suppression ID

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  custom_signature_ids: [56], # Array<Integer> | IDs of custom signatures to be suppressed
  external_account_ids: [56], # Array<Integer> | IDs of external accounts to be suppressed
  include_new_accounts: true, # BOOLEAN | When enabled, automatically adds new accounts to this suppression. This field can only be set by an organization level user.
  reason: "reason_example", # String | The reason for the suppresion
  regions: ["regions_example"], # Array<String> | Codes of regions to be suppressed
  resource: "resource_example", # String | The resource string this suppression will suppress alerts for
  signature_ids: [56] # Array<Integer> | IDs of signatures to be suppressed
}

begin
  #Update a(n) Suppression
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SuppressionsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Suppression ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of custom signatures to be suppressed | [optional] 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of external accounts to be suppressed | [optional] 
 **include_new_accounts** | **BOOLEAN**| When enabled, automatically adds new accounts to this suppression. This field can only be set by an organization level user. | [optional] 
 **reason** | **String**| The reason for the suppresion | [optional] 
 **regions** | [**Array&lt;String&gt;**](String.md)| Codes of regions to be suppressed | [optional] 
 **resource** | **String**| The resource string this suppression will suppress alerts for | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| IDs of signatures to be suppressed | [optional] 

### Return type

[**Suppression**](Suppression.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



