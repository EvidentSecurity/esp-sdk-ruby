# ESP::StatSignaturesApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_for_stat**](StatSignaturesApi.md#list_for_stat) | **GET** /api/v2/stats/{stat_id}/signatures.json_api | Get a list of statistics for signatures
[**show**](StatSignaturesApi.md#show) | **GET** /api/v2/stats/signatures/{id}.json_api | Show a single Stat Signature


# **list_for_stat**
> PaginatedCollection list_for_stat(stat_id, opts)

Get a list of statistics for signatures

A successful call to this API returns all the statistics of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatSignaturesApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve signature statistics for

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  signature, stat See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [stat_id, type_id]    
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of statistics for signatures
  result = api_instance.list_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatSignaturesApi->list_for_stat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve signature statistics for | 
 **include** | **String**| Related objects that can be included in the response:  signature, stat See Including Objects for more information. | [optional] 
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
> StatSignature show(id, opts)

Show a single Stat Signature



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatSignaturesApi.new

id = 56 # Integer | Stat Signature ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  signature, stat See Including Objects for more information.
}

begin
  #Show a single Stat Signature
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatSignaturesApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Stat Signature ID | 
 **include** | **String**| Related objects that can be included in the response:  signature, stat See Including Objects for more information. | [optional] 

### Return type

[**StatSignature**](StatSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



