# ESP::MetadataApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_alert**](MetadataApi.md#for_alert) | **GET** /api/v2/alerts/{alert_id}/metadata.json_api | Show the metadata for an alert
[**show**](MetadataApi.md#show) | **GET** /api/v2/metadata/{id}.json_api | Show a single Metadata


# **for_alert**
> Metadata for_alert(alert_id)

Show the metadata for an alert

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::MetadataApi.new

alert_id = 56 # Integer | Alert Id


begin
  #Show the metadata for an alert
  result = api_instance.for_alert(alert_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling MetadataApi->for_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alert_id** | **Integer**| Alert Id | 

### Return type

[**Metadata**](Metadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> Metadata show(id)

Show a single Metadata

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::MetadataApi.new

id = 56 # Integer | Metadata Id


begin
  #Show a single Metadata
  result = api_instance.show(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling MetadataApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Metadata Id | 

### Return type

[**Metadata**](Metadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



