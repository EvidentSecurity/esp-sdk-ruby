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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
> Report show(id, opts)

Show a single Report

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ReportsApi.new

id = 56 # Integer | Report ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



