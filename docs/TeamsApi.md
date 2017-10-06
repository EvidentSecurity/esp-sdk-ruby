# ESP::TeamsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TeamsApi.md#create) | **POST** /api/v2/teams.json_api | Create a(n) Team
[**destroy**](TeamsApi.md#destroy) | **DELETE** /api/v2/teams/{id}.json_api | Remove a(n) Team
[**list**](TeamsApi.md#list) | **PUT** /api/v2/teams.json_api | Get a list of Teams
[**show**](TeamsApi.md#show) | **GET** /api/v2/teams/{id}.json_api | Show a single Team
[**update**](TeamsApi.md#update) | **PATCH** /api/v2/teams/{id}.json_api | Update a(n) Team


# **create**
> Team create(name, sub_organization_id)

Create a(n) Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

name = "name_example" # String | Name of the team

sub_organization_id = 56 # Integer | The ID of the sub organization to attach this team to


begin
  #Create a(n) Team
  result = api_instance.create(name, sub_organization_id)
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

### Return type

[**Team**](Team.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team ID


begin
  #Remove a(n) Team
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Team ID | 

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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
> Team show(id, opts)

Show a single Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> Team update(id, name)

Update a(n) Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team ID

name = "name_example" # String | Name of the team


begin
  #Update a(n) Team
  result = api_instance.update(id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Team ID | 
 **name** | **String**| Name of the team | 

### Return type

[**Team**](Team.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



