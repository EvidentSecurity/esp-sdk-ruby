# ESP::ReportsApi

All URIs are relative to *http://localhost/*

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list**
> PaginatedCollection list(opts)

Get a list of Reports

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
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
> Report show(id, opts)

Show a single Report

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

id = 56 # Integer | Report Id

opts = { 
  include: "include_example" # String | Included Objects
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
 **include** | **String**| Included Objects | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



