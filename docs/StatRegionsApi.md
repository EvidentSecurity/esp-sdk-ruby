# ESP::StatRegionsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_for_stat**](StatRegionsApi.md#list_for_stat) | **GET** /api/v2/stats/{stat_id}/regions.json_api | Get a list of statistics for regions
[**show**](StatRegionsApi.md#show) | **GET** /api/v2/stats/regions/{id}.json_api | Show a single Stat Region


# **list_for_stat**
> PaginatedCollection list_for_stat(stat_id, opts)

Get a list of statistics for regions

A successful call to this API returns all the statistics of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatRegionsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve region statistics for

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  region, stat See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [stat_id, type_id]    
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of statistics for regions
  result = api_instance.list_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatRegionsApi->list_for_stat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve region statistics for | 
 **include** | **String**| Related objects that can be included in the response:  region, stat See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [stat_id, type_id]     | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> StatRegion show(id, opts)

Show a single Stat Region



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatRegionsApi.new

id = 56 # Integer | Stat Region ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  region, stat See Including Objects for more information.
}

begin
  #Show a single Stat Region
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatRegionsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Stat Region ID | 
 **include** | **String**| Related objects that can be included in the response:  region, stat See Including Objects for more information. | [optional] 

### Return type

[**StatRegion**](StatRegion.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



