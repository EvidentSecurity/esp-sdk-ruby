# ESP::ReportsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReportsApi.md#create) | **POST** /api/v2/reports.json_api | Create a(n) Report
[**list**](ReportsApi.md#list) | **PUT** /api/v2/reports.json_api | Get a list of Reports
[**show**](ReportsApi.md#show) | **GET** /api/v2/reports/{id}.json_api | Show a single Report


# **create**
> Report create(team_id)

Create a(n) Report

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

team_id = 56 # Integer | The ID of the team to create a report for


begin
  #Create a(n) Report
  result = api_instance.create(team_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **Integer**| The ID of the team to create a report for | 

### Return type

[**Report**](Report.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Reports

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]   Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  organization,sub_organization,team,external_account,alerts,stat  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Reports
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]   Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  organization,sub_organization,team,external_account,alerts,stat  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Report show(id, opts)

Show a single Report

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

id = 56 # Integer | Report Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  organization,sub_organization,team,external_account,alerts,stat  See Including Objects for more information.
}

begin
  #Show a single Report
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Report Id | 
 **include** | **String**| Objects that can be included in the response:  organization,sub_organization,team,external_account,alerts,stat  See Including Objects for more information. | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



