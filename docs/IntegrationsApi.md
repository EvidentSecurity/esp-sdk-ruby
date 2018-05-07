# ESP::IntegrationsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](IntegrationsApi.md#delete) | **DELETE** /api/v2/integrations/{id}.json_api | Delete a(n) Integration
[**disable**](IntegrationsApi.md#disable) | **PATCH** /api/v2/integrations/{id}/disable.json_api | Disable a single Integration
[**list**](IntegrationsApi.md#list) | **PUT** /api/v2/integrations.json_api | Get a list of Integrations
[**show**](IntegrationsApi.md#show) | **GET** /api/v2/integrations/{id}.json_api | Show a single Integration
[**test_notify**](IntegrationsApi.md#test_notify) | **POST** /api/v2/integrations/{id}/test_notify.json_api | Test an Integration


# **delete**
> Meta delete(id)

Delete a(n) Integration

Use this endpoint to destory any type of Integration.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsApi.new

id = 56 # Integer | Integration ID


begin
  #Delete a(n) Integration
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Integration ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **disable**
> Meta disable(id)

Disable a single Integration

This will disable any type of Integration

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsApi.new

id = 56 # Integer | Integration ID


begin
  #Disable a single Integration
  result = api_instance.disable(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsApi->disable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Integration ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Integrations

This will return a list of every type of Integration.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsApi.new

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, creator, service, external_accounts, signatures, custom_signatures See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, organization_id, name, service_type] Matching Searchable Attributes: [name, service_type]   Searchable Associations: [teams, signatures, custom_signatures] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of Integrations
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Related objects that can be included in the response:  organization, creator, service, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, organization_id, name, service_type] Matching Searchable Attributes: [name, service_type]   Searchable Associations: [teams, signatures, custom_signatures] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Integration show(id, opts)

Show a single Integration

This will return any type of Integration.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsApi.new

id = 56 # Integer | Integration ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, creator, service, external_accounts, signatures, custom_signatures See Including Objects for more information.
}

begin
  #Show a single Integration
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Integration ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, creator, service, external_accounts, signatures, custom_signatures See Including Objects for more information. | [optional] 

### Return type

[**Integration**](Integration.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **test_notify**
> Meta test_notify(id)

Test an Integration

This will test any type of Integration.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsApi.new

id = 56 # Integer | Integration ID


begin
  #Test an Integration
  result = api_instance.test_notify(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsApi->test_notify: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Integration ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



