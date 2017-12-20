# ESP::TeamsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TeamsApi.md#create) | **POST** /api/v2/teams.json_api | Create a(n) Team
[**delete**](TeamsApi.md#delete) | **DELETE** /api/v2/teams/{id}.json_api | Delete a(n) Team
[**list**](TeamsApi.md#list) | **PUT** /api/v2/teams.json_api | Get a list of Teams
[**show**](TeamsApi.md#show) | **GET** /api/v2/teams/{id}.json_api | Show a single Team
[**update**](TeamsApi.md#update) | **PATCH** /api/v2/teams/{id}.json_api | Update a(n) Team


# **create**
> Team create(name, sub_organization_id, opts)

Create a(n) Team



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

name = "name_example" # String | Name of the team

sub_organization_id = 56 # Integer | The ID of the sub organization to attach this team to

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
}

begin
  #Create a(n) Team
  result = api_instance.create(name, sub_organization_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the team | 
 **sub_organization_id** | **Integer**| The ID of the sub organization to attach this team to | 
 **include** | **String**| Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information. | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Team



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) Team
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->delete: #{e}"
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

Get a list of Teams



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, custom_signatures, integrations] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
}

begin
  #Get a list of Teams
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, name] Matching Searchable Attribute: [name]  Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, custom_signatures, integrations] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Team show(id, opts)

Show a single Team



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
}

begin
  #Show a single Team
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Team ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information. | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> Team update(id, opts)

Update a(n) Team



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team ID

opts = { 
  name: "name_example", # String | Name of the team
  include: "include_example" # String | Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information.
}

begin
  #Update a(n) Team
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Team ID | 
 **name** | **String**| Name of the team | [optional] 
 **include** | **String**| Related objects that can be included in the response:  custom_signatures, external_accounts, organization, sub_organization See Including Objects for more information. | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



