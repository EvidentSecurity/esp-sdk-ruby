# ESP::UsersApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UsersApi.md#create) | **POST** /api/v2/users.json_api | Create a(n) User
[**destroy**](UsersApi.md#destroy) | **DELETE** /api/v2/users/{id}.json_api | Remove a(n) User
[**list**](UsersApi.md#list) | **PUT** /api/v2/users.json_api | Get a list of Users
[**show**](UsersApi.md#show) | **GET** /api/v2/users/{id}.json_api | Show a single User
[**update**](UsersApi.md#update) | **PATCH** /api/v2/users/{id}.json_api | Update a(n) User


# **create**
> User create(first_name, last_name, email, opts)

Create a(n) User

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

first_name = "first_name_example" # String | The first name of the user

last_name = "last_name_example" # String | The last name of the user

email = "email_example" # String | The email of the user

opts = { 
  role_id: "role_id_example", # String | The role of the user
  sub_organization_ids: [56], # Array<Integer> | A list of sub organization IDs that the user should have access to
  team_ids: [56], # Array<Integer> | A list of team IDs that the user should have access to
  disable_daily_emails: "disable_daily_emails_example", # String | Whether the daily emails should be turned off or not. Valid values are true/false
  phone: "phone_example", # String | The phone number of the user
  time_zone: "time_zone_example" # String | The time zone of the user. See Time Zones for a list of valid time zones
}

begin
  #Create a(n) User
  result = api_instance.create(first_name, last_name, email, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**| The first name of the user | 
 **last_name** | **String**| The last name of the user | 
 **email** | **String**| The email of the user | 
 **role_id** | **String**| The role of the user | [optional] 
 **sub_organization_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of sub organization IDs that the user should have access to | [optional] 
 **team_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of team IDs that the user should have access to | [optional] 
 **disable_daily_emails** | **String**| Whether the daily emails should be turned off or not. Valid values are true/false | [optional] 
 **phone** | **String**| The phone number of the user | [optional] 
 **time_zone** | **String**| The time zone of the user. See Time Zones for a list of valid time zones | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy**
> Object destroy(id)

Remove a(n) User

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

id = 56 # Integer | User Id


begin
  #Remove a(n) User
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User Id | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Users

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Users
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->list: #{e}"
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
> User show(id, opts)

Show a single User

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

id = 56 # Integer | User Id

opts = { 
  include: "include_example" # String | Included Objects
}

begin
  #Show a single User
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User Id | 
 **include** | **String**| Included Objects | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **update**
> User update(id, first_name, last_name, email, opts)

Update a(n) User

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

id = 56 # Integer | User Id

first_name = "first_name_example" # String | The first name of the user

last_name = "last_name_example" # String | The last name of the user

email = "email_example" # String | The email of the user

opts = { 
  role_id: "role_id_example", # String | The role of the user
  sub_organization_ids: [56], # Array<Integer> | A list of sub organization IDs that the user should have access to
  team_ids: [56], # Array<Integer> | A list of team IDs that the user should have access to
  disable_daily_emails: "disable_daily_emails_example", # String | Whether the daily emails should be turned off or not. Valid values are true/false
  phone: "phone_example", # String | The phone number of the user
  time_zone: "time_zone_example" # String | The time zone of the user. See Time Zones for a list of valid time zones
}

begin
  #Update a(n) User
  result = api_instance.update(id, first_name, last_name, email, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User Id | 
 **first_name** | **String**| The first name of the user | 
 **last_name** | **String**| The last name of the user | 
 **email** | **String**| The email of the user | 
 **role_id** | **String**| The role of the user | [optional] 
 **sub_organization_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of sub organization IDs that the user should have access to | [optional] 
 **team_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of team IDs that the user should have access to | [optional] 
 **disable_daily_emails** | **String**| Whether the daily emails should be turned off or not. Valid values are true/false | [optional] 
 **phone** | **String**| The phone number of the user | [optional] 
 **time_zone** | **String**| The time zone of the user. See Time Zones for a list of valid time zones | [optional] 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



