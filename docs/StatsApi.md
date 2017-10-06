# ESP::StatsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_compliance_controls**](StatsApi.md#for_compliance_controls) | **GET** /api/v2/stats/{stat_id}/compliance_controls.json_api | A successful call to this API returns all the stats of all the compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all compliance controls for the selected hour.
[**for_custom_compliance_controls**](StatsApi.md#for_custom_compliance_controls) | **GET** /api/v2/stats/{stat_id}/custom_compliance_controls.json_api | A successful call to this API returns all the stats of all the custom compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom compliance controls for the selected hour.
[**for_custom_signatures**](StatsApi.md#for_custom_signatures) | **GET** /api/v2/stats/{stat_id}/custom_signatures.json_api | A successful call to this API returns all the stats of all the custom signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom_signatures for the selected hour.
[**for_regions**](StatsApi.md#for_regions) | **GET** /api/v2/stats/{stat_id}/regions.json_api | A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**for_report**](StatsApi.md#for_report) | **GET** /api/v2/reports/{report_id}/stats.json_api | A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**for_services**](StatsApi.md#for_services) | **GET** /api/v2/stats/{stat_id}/services.json_api | A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from services contained in all services for the selected hour.
[**for_signatures**](StatsApi.md#for_signatures) | **GET** /api/v2/stats/{stat_id}/signatures.json_api | A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.
[**latest_for_teams**](StatsApi.md#latest_for_teams) | **PUT** /api/v2/stats/latest_for_teams.json_api | A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
[**show**](StatsApi.md#show) | **GET** /api/v2/stats/custom_compliance_controls/{id}.json_api | Show a single StatCustomComplianceControl
[**show_0**](StatsApi.md#show_0) | **GET** /api/v2/stats/compliance_controls/{id}.json_api | Show a single StatComplianceControl
[**show_1**](StatsApi.md#show_1) | **GET** /api/v2/stats/signatures/{id}.json_api | Show a single StatSignature
[**show_2**](StatsApi.md#show_2) | **GET** /api/v2/stats/{id}.json_api | Show a single Stat
[**show_3**](StatsApi.md#show_3) | **GET** /api/v2/stats/regions/{id}.json_api | Show a single StatRegion
[**show_4**](StatsApi.md#show_4) | **GET** /api/v2/stats/custom_signatures/{id}.json_api | Show a single StatCustomSignature
[**show_5**](StatsApi.md#show_5) | **GET** /api/v2/stats/services/{id}.json_api | Show a single StatService


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
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **for_custom_compliance_controls**
> PaginatedCollection for_custom_compliance_controls(stat_id, opts)

A successful call to this API returns all the stats of all the custom compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom compliance controls for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve custom compliance control stats for

opts = { 
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #A successful call to this API returns all the stats of all the custom compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom compliance controls for the selected hour.
  result = api_instance.for_custom_compliance_controls(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->for_custom_compliance_controls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stat_id** | **Integer**| The ID of the stat to retrieve custom compliance control stats for | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
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
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
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
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
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
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **for_services**
> PaginatedCollection for_services(stat_id, opts)

A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from services contained in all services for the selected hour.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

stat_id = 56 # Integer | The ID of the stat to retrieve service stats for

opts = { 
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
}

begin
  #A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from services contained in all services for the selected hour.
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
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
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
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
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  See Searching Lists for more information.
  include: "include_example", # String | Related objects that can be included in the response.  See Including Objects for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
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
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  See Searching Lists for more information. | [optional] 
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
> StatCustomComplianceControl show(id, opts)

Show a single StatCustomComplianceControl

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | StatCustomComplianceControl ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single StatCustomComplianceControl
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| StatCustomComplianceControl ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**StatCustomComplianceControl**](StatCustomComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_0**
> StatComplianceControl show_0(id, opts)

Show a single StatComplianceControl

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | StatComplianceControl ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single StatComplianceControl
  result = api_instance.show_0(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| StatComplianceControl ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**StatComplianceControl**](StatComplianceControl.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_1**
> StatSignature show_1(id, opts)

Show a single StatSignature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | StatSignature ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single StatSignature
  result = api_instance.show_1(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| StatSignature ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**StatSignature**](StatSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_2**
> Stat show_2(id, opts)

Show a single Stat

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | Stat ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single Stat
  result = api_instance.show_2(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Stat ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_3**
> StatRegion show_3(id, opts)

Show a single StatRegion

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | StatRegion ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single StatRegion
  result = api_instance.show_3(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_3: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| StatRegion ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**StatRegion**](StatRegion.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_4**
> StatCustomSignature show_4(id, opts)

Show a single StatCustomSignature

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | StatCustomSignature ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single StatCustomSignature
  result = api_instance.show_4(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_4: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| StatCustomSignature ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**StatCustomSignature**](StatCustomSignature.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_5**
> StatService show_5(id, opts)

Show a single StatService

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::StatsApi.new

id = 56 # Integer | StatService ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single StatService
  result = api_instance.show_5(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_5: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| StatService ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**StatService**](StatService.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



