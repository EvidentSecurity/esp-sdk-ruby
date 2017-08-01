# ESP::ScanIntervalsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ScanIntervalsApi.md#create) | **POST** /api/v2/scan_intervals.json_api | Create a(n) Scan Interval
[**destroy**](ScanIntervalsApi.md#destroy) | **DELETE** /api/v2/scan_intervals/{id}.json_api | Remove a(n) ScanInterval
[**list**](ScanIntervalsApi.md#list) | **GET** /api/v2/external_accounts/{external_account_id}/scan_intervals.json_api | Get a list of Scan Intervals
[**show**](ScanIntervalsApi.md#show) | **GET** /api/v2/scan_intervals/{id}.json_api | Show a single Scan Interval
[**update**](ScanIntervalsApi.md#update) | **PATCH** /api/v2/scan_intervals/{id}.json_api | Update a(n) Scan Interval


# **create**
> ScanInterval create(external_account_id, interval, service_id)

Create a(n) Scan Interval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

external_account_id = 56 # Integer | The ID of the external account this scan interval is for

interval = 56 # Integer | The interval, in minutes, this service will be scanned

service_id = 56 # Integer | The service ID this scan interval is for


begin
  #Create a(n) Scan Interval
  result = api_instance.create(external_account_id, interval, service_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account this scan interval is for | 
 **interval** | **Integer**| The interval, in minutes, this service will be scanned | 
 **service_id** | **Integer**| The service ID this scan interval is for | 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **destroy**
> ScanInterval destroy(id)

Remove a(n) ScanInterval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | ScanInterval Id


begin
  #Remove a(n) ScanInterval
  result = api_instance.destroy(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->destroy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ScanInterval Id | 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(external_account_id, opts)

Get a list of Scan Intervals

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

external_account_id = 56 # Integer | 

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  external_account,service  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #Get a list of Scan Intervals
  result = api_instance.list(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**|  | 
 **include** | **String**| Objects that can be included in the response:  external_account,service  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> ScanInterval show(id, opts)

Show a single Scan Interval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | Scan Interval Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  external_account,service  See Including Objects for more information.
}

begin
  #Show a single Scan Interval
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Scan Interval Id | 
 **include** | **String**| Objects that can be included in the response:  external_account,service  See Including Objects for more information. | [optional] 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **update**
> ScanInterval update(id, external_account_id, interval, service_id)

Update a(n) Scan Interval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | Scan Interval Id

external_account_id = 56 # Integer | The ID of the external account this scan interval is for

interval = 56 # Integer | The interval, in minutes, this service will be scanned

service_id = 56 # Integer | The service ID this scan interval is for


begin
  #Update a(n) Scan Interval
  result = api_instance.update(id, external_account_id, interval, service_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Scan Interval Id | 
 **external_account_id** | **Integer**| The ID of the external account this scan interval is for | 
 **interval** | **Integer**| The interval, in minutes, this service will be scanned | 
 **service_id** | **Integer**| The service ID this scan interval is for | 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



