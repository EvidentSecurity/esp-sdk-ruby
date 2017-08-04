# ESP::StatsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_compliance_controls**](StatsApi.md#for_compliance_controls) | **GET** /api/v2/stats/{stat_id}/compliance_controls.json_api | A successful call to this API returns all the stats of all the compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all compliance controls for the selected hour.
[**for_custom_signatures**](StatsApi.md#for_custom_signatures) | **GET** /api/v2/stats/{stat_id}/custom_signatures.json_api | A successful call to this API returns all the stats of all the custom signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom_signatures for the selected hour.
[**for_regions**](StatsApi.md#for_regions) | **GET** /api/v2/stats/{stat_id}/regions.json_api | A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**for_report**](StatsApi.md#for_report) | **GET** /api/v2/reports/{report_id}/stats.json_api | A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**for_services**](StatsApi.md#for_services) | **GET** /api/v2/stats/{stat_id}/services.json_api | A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all services for the selected hour.
[**for_signatures**](StatsApi.md#for_signatures) | **GET** /api/v2/stats/{stat_id}/signatures.json_api | A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.
[**latest_for_teams**](StatsApi.md#latest_for_teams) | **GET** /api/v2/stats/latest_for_teams.json_api | A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
[**show**](StatsApi.md#show) | **GET** /api/v2/stats/{id}.json_api | Show a single Stat


# **for_compliance_controls**
> PaginatedCollection for_compliance_controls(stat_id, opts)

A successful call to this API returns all the stats of all the compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all compliance controls for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve compliance control stats for

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  compliance_control,stat  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the stats of all the compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all compliance controls for the selected hour.
  result = api_instance.for_compliance_controls(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_compliance_controls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve compliance control stats for | 
 **include** | **String**| Objects that can be included in the response:  compliance_control,stat  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **for_custom_signatures**
> PaginatedCollection for_custom_signatures(stat_id, opts)

A successful call to this API returns all the stats of all the custom signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom_signatures for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve custom signature stats for

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  custom_signature,stat  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the stats of all the custom signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom_signatures for the selected hour.
  result = api_instance.for_custom_signatures(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_custom_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve custom signature stats for | 
 **include** | **String**| Objects that can be included in the response:  custom_signature,stat  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **for_regions**
> PaginatedCollection for_regions(stat_id, opts)

A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve region stats for

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  region,stat  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
  result = api_instance.for_regions(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_regions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve region stats for | 
 **include** | **String**| Objects that can be included in the response:  region,stat  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **for_report**
> Stat for_report(report_id, opts)

A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

report_id = 56 # Integer | The ID of the report to retrieve stats for

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  report,regions,services,signatures,custom_signatures  See Including Objects for more information.
}

begin
  #A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
  result = api_instance.for_report(report_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **Integer**| The ID of the report to retrieve stats for | 
 **include** | **String**| Objects that can be included in the response:  report,regions,services,signatures,custom_signatures  See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **for_services**
> PaginatedCollection for_services(stat_id, opts)

A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all services for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve service stats for

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  service,stat  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all services for the selected hour.
  result = api_instance.for_services(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_services: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve service stats for | 
 **include** | **String**| Objects that can be included in the response:  service,stat  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **for_signatures**
> PaginatedCollection for_signatures(stat_id, opts)

A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve signature stats for

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  signature,stat  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.
  result = api_instance.for_signatures(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve signature stats for | 
 **include** | **String**| Objects that can be included in the response:  signature,stat  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **latest_for_teams**
> PaginatedCollection latest_for_teams(opts)

A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

opts = { 
  include: "include_example", # String | Objects that can be included in the response:  report,regions,services,signatures,custom_signatures  See Including Objects for more information.
  page: {'key' => "page_example"} # Hash<String, String> | Page Number and Page Size.  Example: page: {number: 1, size: 20}
}

begin
  #A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
  result = api_instance.latest_for_teams(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->latest_for_teams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Objects that can be included in the response:  report,regions,services,signatures,custom_signatures  See Including Objects for more information. | [optional] 
 **page** | [**Hash&lt;String, String&gt;**](String.md)| Page Number and Page Size.  Example: page: {number: 1, size: 20} | [optional] 

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> Stat show(id, opts)

Show a single Stat

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | Stat Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  report,regions,services,signatures,custom_signatures  See Including Objects for more information.
}

begin
  #Show a single Stat
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Stat Id | 
 **include** | **String**| Objects that can be included in the response:  report,regions,services,signatures,custom_signatures  See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



