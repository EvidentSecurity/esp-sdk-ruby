# ESP::StatsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_report**](StatsApi.md#for_report) | **GET** /api/v2/reports/{report_id}/stats.json_api | A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**latest_for_teams**](StatsApi.md#latest_for_teams) | **GET** /api/v2/stats/latest_for_teams.json_api | A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key


# **for_report**
> Stat for_report(report_id)

A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

report_id = 56 # Integer | The ID of the report to retrieve stats for


begin
  #A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
  result = api_instance.for_report(report_id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_id** | **Integer**| The ID of the report to retrieve stats for | 

### Return type

[**Stat**](Stat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **latest_for_teams**
> Array&lt;Stat&gt; latest_for_teams

A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

begin
  #A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
  result = api_instance.latest_for_teams
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->latest_for_teams: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Stat&gt;**](Stat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



