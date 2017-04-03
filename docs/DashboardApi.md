# ESP::DashboardApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recent**](DashboardApi.md#recent) | **GET** /api/v2/dashboard/recent.json_api | 


# **recent**
> PaginatedCollection recent(opts)



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::DashboardApi.new

opts = { 
  page: {'key' => "page_example"} # Hash<String, String> | Page Number
}

begin
  result = api_instance.recent(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling DashboardApi->recent: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



