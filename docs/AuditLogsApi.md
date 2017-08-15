# ESP::AuditLogsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](AuditLogsApi.md#list) | **PUT** /api/v2/audit_logs.json_api | Get a list of Audit Logs
[**show**](AuditLogsApi.md#show) | **GET** /api/v2/audit_logs/{id}.json_api | Show a single Audit Log


# **list**
> PaginatedCollection list(opts)

Get a list of Audit Logs

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, item_id, item_type] Matching Searchable Attribute: [item_type]   Searchable Associations: [user, organization] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  organization,user  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Audit Logs
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, item_id, item_type] Matching Searchable Attribute: [item_type]   Searchable Associations: [user, organization] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  organization,user  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> AuditLog show(id, opts)

Show a single Audit Log

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogsApi.new

id = 56 # Integer | Audit Log Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  organization,user  See Including Objects for more information.
}

begin
  #Show a single Audit Log
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audit Log Id | 
 **include** | **String**| Objects that can be included in the response:  organization,user  See Including Objects for more information. | [optional] 

### Return type

[**AuditLog**](AuditLog.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



