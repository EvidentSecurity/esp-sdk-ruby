# ESP::SignatureStatsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](SignatureStatsApi.md#list) | **GET** /api/v2/stats/{stat_id}/signatures.json_api | A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.


# **list**
> PaginatedCollection list(stat_id)

A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::SignatureStatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve service stats for


begin
  #A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.
  result = api_instance.list(stat_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling SignatureStatsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve service stats for | 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



