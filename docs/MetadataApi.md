# ESP::MetadataApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_alert**](MetadataApi.md#for_alert) | **GET** /api/v2/alerts/{alert_id}/metadata.json_api | Show the metadata for an alert
[**show**](MetadataApi.md#show) | **GET** /api/v2/metadata/{id}.json_api | Show a single Metadata


# **for_alert**
> Metadata for_alert(alert_id, opts)

Show the metadata for an alert



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::MetadataApi.new

alert_id = 56 # Integer | Alert Id

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Show the metadata for an alert
  result = api_instance.for_alert(alert_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling MetadataApi->for_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| Alert Id | 
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**Metadata**](Metadata.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Metadata show(id, opts)

Show a single Metadata



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::MetadataApi.new

id = 56 # Integer | Metadata ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:   See Including Objects for more information.
}

begin
  #Show a single Metadata
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling MetadataApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Metadata ID | 
 **include** | **String**| Related objects that can be included in the response:   See Including Objects for more information. | [optional] 

### Return type

[**Metadata**](Metadata.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



