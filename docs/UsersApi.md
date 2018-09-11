# ESP::UsersApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UsersApi.md#create) | **POST** /api/v2/users.json_api | Create a(n) User
[**delete**](UsersApi.md#delete) | **DELETE** /api/v2/users/{id}.json_api | Delete a(n) User
[**list**](UsersApi.md#list) | **PUT** /api/v2/users.json_api | Get a list of Users
[**show**](UsersApi.md#show) | **GET** /api/v2/users/{id}.json_api | Show a single User
[**update**](UsersApi.md#update) | **PATCH** /api/v2/users/{id}.json_api | Update a(n) User


# **create**
> User create(email, first_name, last_name, opts)

Create a(n) User



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

email = "email_example" # String | The email of the user

first_name = "first_name_example" # String | The first name of the user

last_name = "last_name_example" # String | The last name of the user

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information.
  access_level: "access_level_example", # String | The level of access this user has. Team access has access to items belonging only to that team. Sub Organization access has access to items belonging only to all teams under that sub organization. Organization access has access to all sub organizations and teams under that organization. Valid values are organization_level, sub_organization_level, team_level
  disable_daily_emails: true, # BOOLEAN | Specifies whether the daily emails should be turned off or not
  phone: "phone_example", # String | The phone number of the user
  role_id: 56, # Integer | The ID of the role of the user. Only a manager can set or modify the role id.
  sub_organization_ids: [56], # Array<Integer> | A list of sub organization IDs that the user should have access to. Only a manager can set or modify the sub organization ids.
  team_ids: [56], # Array<Integer> | A list of team IDs that the user should have access to. Only a manager can set or modify the team ids.
  time_zone: "time_zone_example" # String | The time zone of the user. See Time Zones for a list of valid time zones
}

begin
  #Create a(n) User
  result = api_instance.create(email, first_name, last_name, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The email of the user | 
 **first_name** | **String**| The first name of the user | 
 **last_name** | **String**| The last name of the user | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information. | [optional] 
 **access_level** | **String**| The level of access this user has. Team access has access to items belonging only to that team. Sub Organization access has access to items belonging only to all teams under that sub organization. Organization access has access to all sub organizations and teams under that organization. Valid values are organization_level, sub_organization_level, team_level | [optional] 
 **disable_daily_emails** | **BOOLEAN**| Specifies whether the daily emails should be turned off or not | [optional] 
 **phone** | **String**| The phone number of the user | [optional] 
 **role_id** | **Integer**| The ID of the role of the user. Only a manager can set or modify the role id. | [optional] 
 **sub_organization_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of sub organization IDs that the user should have access to. Only a manager can set or modify the sub organization ids. | [optional] 
 **team_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of team IDs that the user should have access to. Only a manager can set or modify the team ids. | [optional] 
 **time_zone** | **String**| The time zone of the user. See Time Zones for a list of valid time zones | [optional] 

### Return type

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id, opts)

Delete a(n) User

The users current password is required when deleting yourself.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

id = 56 # Integer | User ID

opts = { 
  current_password: "current_password_example" # String | The user's currently stored password
}

begin
  #Delete a(n) User
  result = api_instance.delete(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User ID | 
 **current_password** | **String**| The user&#39;s currently stored password | [optional] 

### Return type

[**Meta**](Meta.md)

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
  include: "include_example", # String | Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, email] Matching Searchable Attribute: [email]  Sortable Attributes: [email, current_sign_in_at, updated_at, created_at, id] Searchable Associations: [role, organization, sub_organizations, teams] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
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
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, email] Matching Searchable Attribute: [email]  Sortable Attributes: [email, current_sign_in_at, updated_at, created_at, id] Searchable Associations: [role, organization, sub_organizations, teams] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

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

id = 56 # Integer | User ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information.
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
 **id** | **Integer**| User ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information. | [optional] 

### Return type

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> User update(id, opts)

Update a(n) User



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::UsersApi.new

id = 56 # Integer | User ID

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information.
  access_level: "access_level_example", # String | The level of access this user has. Team access has access to items belonging only to that team. Sub Organization access has access to items belonging only to all teams under that sub organization. Organization access has access to all sub organizations and teams under that organization. Valid values are organization_level, sub_organization_level, team_level
  disable_daily_emails: true, # BOOLEAN | Specifies whether the daily emails should be turned off or not
  first_name: "first_name_example", # String | The first name of the user
  last_name: "last_name_example", # String | The last name of the user
  phone: "phone_example", # String | The phone number of the user
  role_id: 56, # Integer | The ID of the role of the user. Only a manager can set or modify the role id.
  sub_organization_ids: [56], # Array<Integer> | A list of sub organization IDs that the user should have access to. Only a manager can set or modify the sub organization ids.
  team_ids: [56], # Array<Integer> | A list of team IDs that the user should have access to. Only a manager can set or modify the team ids.
  time_zone: "time_zone_example" # String | The time zone of the user. See Time Zones for a list of valid time zones
}

begin
  #Update a(n) User
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling UsersApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organizations, teams, role See Including Objects for more information. | [optional] 
 **access_level** | **String**| The level of access this user has. Team access has access to items belonging only to that team. Sub Organization access has access to items belonging only to all teams under that sub organization. Organization access has access to all sub organizations and teams under that organization. Valid values are organization_level, sub_organization_level, team_level | [optional] 
 **disable_daily_emails** | **BOOLEAN**| Specifies whether the daily emails should be turned off or not | [optional] 
 **first_name** | **String**| The first name of the user | [optional] 
 **last_name** | **String**| The last name of the user | [optional] 
 **phone** | **String**| The phone number of the user | [optional] 
 **role_id** | **Integer**| The ID of the role of the user. Only a manager can set or modify the role id. | [optional] 
 **sub_organization_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of sub organization IDs that the user should have access to. Only a manager can set or modify the sub organization ids. | [optional] 
 **team_ids** | [**Array&lt;Integer&gt;**](Integer.md)| A list of team IDs that the user should have access to. Only a manager can set or modify the team ids. | [optional] 
 **time_zone** | **String**| The time zone of the user. See Time Zones for a list of valid time zones | [optional] 

### Return type

[**User**](User.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



