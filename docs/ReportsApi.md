# ESP::ReportsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReportsApi.md#create) | **POST** /api/v2/reports.json_api | Create a(n) Report
[**list**](ReportsApi.md#list) | **PUT** /api/v2/reports.json_api | Get a list of Reports
[**show**](ReportsApi.md#show) | **GET** /api/v2/reports/{id}.json_api | Show a single Report


# **create**
> Report create(team_id, opts)

Create a(n) Report



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

team_id = 56 # Integer | The ID of the team to create a report for

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information.
}

begin
  #Create a(n) Report
  result = api_instance.create(team_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ReportsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **Integer**| The ID of the team to create a report for | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information. | [optional] 

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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]  Limited Searchable Attributes: [external_account_arn_eq, external_account_provider_eq] Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information.
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, created_at]  Limited Searchable Attributes: [external_account_arn_eq, external_account_provider_eq] Sortable Attributes: [created_at, id] Searchable Associations: [organization, sub_organization, team, external_account] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information. | [optional] 

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

id = 56 # Integer | Report ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information.
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
 **id** | **Integer**| Report ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, sub_organization, team, external_account, stat See Including Objects for more information. | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



