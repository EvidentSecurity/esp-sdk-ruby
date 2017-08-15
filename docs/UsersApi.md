# ESP::UsersApi

All URIs are relative to https://api.evident.io

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
  disable_daily_emails: true, # BOOLEAN | Whether the daily emails should be turned off or not.
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
 **disable_daily_emails** | **BOOLEAN**| Whether the daily emails should be turned off or not. | [optional] 
 **phone** | **String**| The phone number of the user | [optional] 
 **time_zone** | **String**| The time zone of the user. See Time Zones for a list of valid time zones | [optional] 

### Return type

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> User destroy(id)

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

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Users

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, email] Matching Searchable Attribute: [email]  Sortable Attributes: [email, current_sign_in_at, updated_at, created_at, id] Searchable Associations: [role, organization, sub_organizations, teams] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  organization,sub_organizations,teams,role  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, email] Matching Searchable Attribute: [email]  Sortable Attributes: [email, current_sign_in_at, updated_at, created_at, id] Searchable Associations: [role, organization, sub_organizations, teams] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  organization,sub_organizations,teams,role  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



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
  include: "include_example" # String | Objects that can be included in the response:  organization,sub_organizations,teams,role  See Including Objects for more information.
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
 **include** | **String**| Objects that can be included in the response:  organization,sub_organizations,teams,role  See Including Objects for more information. | [optional] 

### Return type

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



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
  disable_daily_emails: true, # BOOLEAN | Whether the daily emails should be turned off or not.
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
 **disable_daily_emails** | **BOOLEAN**| Whether the daily emails should be turned off or not. | [optional] 
 **phone** | **String**| The phone number of the user | [optional] 
 **time_zone** | **String**| The time zone of the user. See Time Zones for a list of valid time zones | [optional] 

### Return type

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



