# ESP::StatsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_report**](StatsApi.md#for_report) | **GET** /api/v2/reports/{report_id}/stats.json_api | Stats for a report
[**latest_for_teams**](StatsApi.md#latest_for_teams) | **PUT** /api/v2/stats/latest_for_teams.json_api | Statistics for teams
[**show**](StatsApi.md#show) | **GET** /api/v2/stats/{id}.json_api | Show a single Stat


# **for_report**
> Stat for_report(report_id, opts)

Stats for a report

A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

report_id = 56 # Integer | The ID of the report to retrieve stats for

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
}

begin
  #Stats for a report
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
 **include** | **String**| Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **latest_for_teams**
> PaginatedCollection latest_for_teams(opts)

Statistics for teams

A successful call to this API returns all the statistics for the most recent report of each team accessible by the given API key

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.      Searchable Association: [report] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Statistics for teams
  result = api_instance.latest_for_teams(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->latest_for_teams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.      Searchable Association: [report] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> Stat show(id, opts)

Show a single Stat



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | Stat ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information.
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
 **id** | **Integer**| Stat ID | 
 **include** | **String**| Related objects that can be included in the response:  report, regions, services, signatures, custom_signatures, custom_compliance_controls, compliance_controls See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



