# ESP::StatCustomComplianceControlsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_for_stat**](StatCustomComplianceControlsApi.md#list_for_stat) | **GET** /api/v2/stats/{stat_id}/custom_compliance_controls.json_api | Statistics for custom compliance controls
[**show**](StatCustomComplianceControlsApi.md#show) | **GET** /api/v2/stats/custom_compliance_controls/{id}.json_api | Show a single Stat Custom Compliance Control


# **list_for_stat**
> PaginatedCollection list_for_stat(stat_id, opts)

Statistics for custom compliance controls

A successful call to this API returns all the statistics of all the custom compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom compliance controls for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatCustomComplianceControlsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve custom compliance control statistics for

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  custom_compliance_control, stat See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [stat_id, type_id]    
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Statistics for custom compliance controls
  result = api_instance.list_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatCustomComplianceControlsApi->list_for_stat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve custom compliance control statistics for | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_control, stat See Including Objects for more information. | [optional] 
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
> StatCustomComplianceControl show(id, opts)

Show a single Stat Custom Compliance Control



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatCustomComplianceControlsApi.new

id = 56 # Integer | Stat Custom Compliance Control ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  custom_compliance_control, stat See Including Objects for more information.
}

begin
  #Show a single Stat Custom Compliance Control
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatCustomComplianceControlsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Stat Custom Compliance Control ID | 
 **include** | **String**| Related objects that can be included in the response:  custom_compliance_control, stat See Including Objects for more information. | [optional] 

### Return type

[**StatCustomComplianceControl**](StatCustomComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



