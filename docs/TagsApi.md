# ESP::TagsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_for_alert**](TagsApi.md#list_for_alert) | **GET** /api/v2/alerts/{alert_id}/tags.json_api | Get a list of Tags
[**show**](TagsApi.md#show) | **GET** /api/v2/tags/{id}.json_api | Show a single Tag


# **list_for_alert**
> PaginatedCollection list_for_alert(alert_id, opts)

Get a list of Tags



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TagsApi.new

alert_id = 56 # Integer | The ID of the alert to list tags for

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Get a list of Tags
  result = api_instance.list_for_alert(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TagsApi->list_for_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| The ID of the alert to list tags for | 
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
> Tag show(id, opts)

Show a single Tag



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::TagsApi.new

id = 56 # Integer | Tag ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Show a single Tag
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling TagsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Tag ID | 
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**Tag**](Tag.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



