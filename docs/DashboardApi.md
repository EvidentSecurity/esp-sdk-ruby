# ESP::DashboardApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recent**](DashboardApi.md#recent) | **GET** /api/v2/dashboard/recent.json_api | The data for the dashboard.  The stat, external_account and team objects will be included in the response


# **recent**
> PaginatedCollection recent(opts)

The data for the dashboard.  The stat, external_account and team objects will be included in the response

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::DashboardApi.new

opts = { 
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]   Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See the filter parameter of the association's list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: 'Bob'}
  include: "include_example", # String | Objects that can be included in the response:  stat,external_account,team  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #The data for the dashboard.  The stat, external_account and team objects will be included in the response
  result = api_instance.recent(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling DashboardApi->recent: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]   Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;} | [optional] 
 **include** | **String**| Objects that can be included in the response:  stat,external_account,team  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



