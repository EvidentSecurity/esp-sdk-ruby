# ESP::ScanIntervalsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ScanIntervalsApi.md#create) | **POST** /api/v2/scan_intervals.json_api | Create a(n) ScanInterval
[**destroy**](ScanIntervalsApi.md#destroy) | **DELETE** /api/v2/scan_intervals/{id}.json_api | Remove a(n) ScanInterval
[**list**](ScanIntervalsApi.md#list) | **GET** /api/v2/external_accounts/{external_account_id}/scan_intervals.json_api | Get a list of ScanIntervals
[**show**](ScanIntervalsApi.md#show) | **GET** /api/v2/scan_intervals/{id}.json_api | Show a single ScanInterval
[**update**](ScanIntervalsApi.md#update) | **PATCH** /api/v2/scan_intervals/{id}.json_api | Update a(n) ScanInterval


# **create**
> ScanInterval create(external_account_id, interval, service_id)

Create a(n) ScanInterval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

external_account_id = 56 # Integer | The ID of the external account this scan interval is for

interval = 56 # Integer | The interval, in minutes, this service will be scanned

service_id = 56 # Integer | The service ID for the scan interval


begin
  #Create a(n) ScanInterval
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
 **service_id** | **Integer**| The service ID for the scan interval | 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **destroy**
> Meta destroy(id)

Remove a(n) ScanInterval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | ScanInterval ID


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
 **id** | **Integer**| ScanInterval ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(external_account_id, opts)

Get a list of ScanIntervals

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve

opts = { 
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #Get a list of ScanIntervals
  result = api_instance.list(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to retrieve | 
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
> ScanInterval show(id, opts)

Show a single ScanInterval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | ScanInterval ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single ScanInterval
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ScanInterval ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ScanInterval update(id, external_account_id, interval, service_id)

Update a(n) ScanInterval

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | ScanInterval ID

external_account_id = 56 # Integer | The ID of the external account this scan interval is for

interval = 56 # Integer | The interval, in minutes, this service will be scanned

service_id = 56 # Integer | The service ID for the scan interval


begin
  #Update a(n) ScanInterval
  result = api_instance.update(id, external_account_id, interval, service_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ScanInterval ID | 
 **external_account_id** | **Integer**| The ID of the external account this scan interval is for | 
 **interval** | **Integer**| The interval, in minutes, this service will be scanned | 
 **service_id** | **Integer**| The service ID for the scan interval | 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



