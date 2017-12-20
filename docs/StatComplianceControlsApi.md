# ESP::StatComplianceControlsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_for_stat**](StatComplianceControlsApi.md#list_for_stat) | **GET** /api/v2/stats/{stat_id}/compliance_controls.json_api | Stats for compliance controls
[**show**](StatComplianceControlsApi.md#show) | **GET** /api/v2/stats/compliance_controls/{id}.json_api | Show a single Stat Compliance Control


# **list_for_stat**
> PaginatedCollection list_for_stat(stat_id, opts)

Stats for compliance controls

A successful call to this API returns all the stats of all the compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all compliance controls for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatComplianceControlsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve compliance control stats for

opts = { 
  page: "{:number=>1,+:size=>20}", # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  include: "include_example" # String | Related objects that can be included in the response:  compliance_control, stat See Including Objects for more information.
}

begin
  #Stats for compliance controls
  result = api_instance.list_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatComplianceControlsApi->list_for_stat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve compliance control stats for | 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]
 **include** | **String**| Related objects that can be included in the response:  compliance_control, stat See Including Objects for more information. | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> StatComplianceControl show(id, opts)

Show a single Stat Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatComplianceControlsApi.new

id = 56 # Integer | Stat Compliance Control ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  compliance_control, stat See Including Objects for more information.
}

begin
  #Show a single Stat Compliance Control
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatComplianceControlsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Stat Compliance Control ID | 
 **include** | **String**| Related objects that can be included in the response:  compliance_control, stat See Including Objects for more information. | [optional] 

### Return type

[**StatComplianceControl**](StatComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



