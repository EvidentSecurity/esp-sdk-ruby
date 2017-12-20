# ESP::ScanIntervalsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ScanIntervalsApi.md#create) | **POST** /api/v2/scan_intervals.json_api | Create a(n) Scan Interval
[**delete**](ScanIntervalsApi.md#delete) | **DELETE** /api/v2/scan_intervals/{id}.json_api | Delete a(n) Scan Interval
[**list_for_external_account**](ScanIntervalsApi.md#list_for_external_account) | **GET** /api/v2/external_accounts/{external_account_id}/scan_intervals.json_api | Get a list of Scan Intervals
[**show**](ScanIntervalsApi.md#show) | **GET** /api/v2/scan_intervals/{id}.json_api | Show a single Scan Interval
[**update**](ScanIntervalsApi.md#update) | **PATCH** /api/v2/scan_intervals/{id}.json_api | Update a(n) Scan Interval


# **create**
> ScanInterval create(external_account_id, interval, service_id, opts)

Create a(n) Scan Interval



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

external_account_id = 56 # Integer | The ID of the external account this scan interval is for

interval = 56 # Integer | The interval, in minutes, this service will be scanned

service_id = 56 # Integer | The service ID for the scan interval

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_account, service See Including Objects for more information.
}

begin
  #Create a(n) Scan Interval
  result = api_instance.create(external_account_id, interval, service_id, opts)
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
 **include** | **String**| Related objects that can be included in the response:  external_account, service See Including Objects for more information. | [optional] 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Scan Interval



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer |  ID


begin
  #Delete a(n) Scan Interval
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list_for_external_account**
> PaginatedCollection list_for_external_account(external_account_id, opts)

Get a list of Scan Intervals



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

external_account_id = 56 # Integer | The ID of the external account to retrieve

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  external_account, service See Including Objects for more information.
}

begin
  #Get a list of Scan Intervals
  result = api_instance.list_for_external_account(external_account_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->list_for_external_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_id** | **Integer**| The ID of the external account to retrieve | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  external_account, service See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ScanInterval show(id, opts)

Show a single Scan Interval



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | Scan Interval ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_account, service See Including Objects for more information.
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
 **id** | **Integer**| Scan Interval ID | 
 **include** | **String**| Related objects that can be included in the response:  external_account, service See Including Objects for more information. | [optional] 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ScanInterval update(id, opts)

Update a(n) Scan Interval



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScanIntervalsApi.new

id = 56 # Integer | Scan Interval ID

opts = { 
  external_account_id: 56, # Integer | The ID of the external account this scan interval is for
  interval: 56, # Integer | The interval, in minutes, this service will be scanned
  service_id: 56, # Integer | The service ID for the scan interval
  include: "include_example" # String | Related objects that can be included in the response:  external_account, service See Including Objects for more information.
}

begin
  #Update a(n) Scan Interval
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScanIntervalsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Scan Interval ID | 
 **external_account_id** | **Integer**| The ID of the external account this scan interval is for | [optional] 
 **interval** | **Integer**| The interval, in minutes, this service will be scanned | [optional] 
 **service_id** | **Integer**| The service ID for the scan interval | [optional] 
 **include** | **String**| Related objects that can be included in the response:  external_account, service See Including Objects for more information. | [optional] 

### Return type

[**ScanInterval**](ScanInterval.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



