# ESP::TeamsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TeamsApi.md#create) | **POST** /api/v2/teams.json_api | Create a(n) Team
[**destroy**](TeamsApi.md#destroy) | **DELETE** /api/v2/teams/{id}.json_api | Remove a(n) Team
[**list**](TeamsApi.md#list) | **PUT** /api/v2/teams.json_api | Get a list of Teams
[**show**](TeamsApi.md#show) | **GET** /api/v2/teams/{id}.json_api | Show a single Team
[**update**](TeamsApi.md#update) | **PATCH** /api/v2/teams/{id}.json_api | Update a(n) Team


# **create**
> Team create(sub_organization_id, name)

Create a(n) Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

sub_organization_id = 56 # Integer | The ID of the sub organization to attach this team to

name = "name_example" # String | The name of the sub organization


begin
  #Create a(n) Team
  result = api_instance.create(sub_organization_id, name)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TeamsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_organization_id** | **Integer**| The ID of the sub organization to attach this team to | 
 **name** | **String**| The name of the sub organization | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team Id


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
 **id** | **Integer**| Team Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Teams

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
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
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching | [optional] 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **show**
> Team show(id, opts)

Show a single Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team Id

opts = { 
  include: "include_example" # String | Included Objects
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
 **id** | **Integer**| Team Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> Team update(id, name)

Update a(n) Team

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TeamsApi.new

id = 56 # Integer | Team Id

name = "name_example" # String | The name of the sub organization


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
 **id** | **Integer**| Team Id | 
 **name** | **String**| The name of the sub organization | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



