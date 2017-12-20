# ESP::PlansApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](PlansApi.md#list) | **GET** /api/v2/plans.json_api | Get a list of Plans
[**show**](PlansApi.md#show) | **GET** /api/v2/plans/{id}.json_api | Show a single Plan


# **list**
> PaginatedCollection list(opts)

Get a list of Plans



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::PlansApi.new

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Get a list of Plans
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling PlansApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Plan show(id, opts)

Show a single Plan



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::PlansApi.new

id = 56 # Integer | Plan ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Show a single Plan
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling PlansApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Plan ID | 
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**Plan**](Plan.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



