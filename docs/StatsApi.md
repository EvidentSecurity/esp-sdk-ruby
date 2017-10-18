# ESP::StatsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**for_report**](StatsApi.md#for_report) | **GET** /api/v2/reports/{report_id}/stats.json_api | A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**latest_for_teams**](StatsApi.md#latest_for_teams) | **PUT** /api/v2/stats/latest_for_teams.json_api | A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
[**list_stat_compliance_controls_for_stat**](StatsApi.md#list_stat_compliance_controls_for_stat) | **GET** /api/v2/stats/{stat_id}/compliance_controls.json_api | A successful call to this API returns all the stats of all the compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all compliance controls for the selected hour.
[**list_stat_custom_compliance_controls_for_stat**](StatsApi.md#list_stat_custom_compliance_controls_for_stat) | **GET** /api/v2/stats/{stat_id}/custom_compliance_controls.json_api | A successful call to this API returns all the stats of all the custom compliance controls for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom compliance controls for the selected hour.
[**list_stat_custom_signatures_for_stat**](StatsApi.md#list_stat_custom_signatures_for_stat) | **GET** /api/v2/stats/{stat_id}/custom_signatures.json_api | A successful call to this API returns all the stats of all the custom signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom_signatures for the selected hour.
[**list_stat_regions_for_stat**](StatsApi.md#list_stat_regions_for_stat) | **GET** /api/v2/stats/{stat_id}/regions.json_api | A successful call to this API returns all the stats of all the regions for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
[**list_stat_services_for_stat**](StatsApi.md#list_stat_services_for_stat) | **GET** /api/v2/stats/{stat_id}/services.json_api | A successful call to this API returns all the stats of all the services for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from services contained in all services for the selected hour.
[**list_stat_signatures_for_stat**](StatsApi.md#list_stat_signatures_for_stat) | **GET** /api/v2/stats/{stat_id}/signatures.json_api | A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.
[**show**](StatsApi.md#show) | **GET** /api/v2/stats/{id}.json_api | Show a single Stat
[**show_stat_compliance_control**](StatsApi.md#show_stat_compliance_control) | **GET** /api/v2/stats/compliance_controls/{id}.json_api | Show a single StatComplianceControl
[**show_stat_custom_compliance_control**](StatsApi.md#show_stat_custom_compliance_control) | **GET** /api/v2/stats/custom_compliance_controls/{id}.json_api | Show a single StatCustomComplianceControl
[**show_stat_custom_signature**](StatsApi.md#show_stat_custom_signature) | **GET** /api/v2/stats/custom_signatures/{id}.json_api | Show a single StatCustomSignature
[**show_stat_region**](StatsApi.md#show_stat_region) | **GET** /api/v2/stats/regions/{id}.json_api | Show a single StatRegion
[**show_stat_service**](StatsApi.md#show_stat_service) | **GET** /api/v2/stats/services/{id}.json_api | Show a single StatService
[**show_stat_signature**](StatsApi.md#show_stat_signature) | **GET** /api/v2/stats/signatures/{id}.json_api | Show a single StatSignature


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



# **list_stat_compliance_controls_for_stat**
> PaginatedCollection list_stat_compliance_controls_for_stat(stat_id, opts)

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
  result = api_instance.list_stat_compliance_controls_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->list_stat_compliance_controls_for_stat: #{e}"
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



# **list_stat_custom_compliance_controls_for_stat**
> PaginatedCollection list_stat_custom_compliance_controls_for_stat(stat_id, opts)

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
  result = api_instance.list_stat_custom_compliance_controls_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->list_stat_custom_compliance_controls_for_stat: #{e}"
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



# **list_stat_custom_signatures_for_stat**
> PaginatedCollection list_stat_custom_signatures_for_stat(stat_id, opts)

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
  result = api_instance.list_stat_custom_signatures_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->list_stat_custom_signatures_for_stat: #{e}"
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



# **list_stat_regions_for_stat**
> PaginatedCollection list_stat_regions_for_stat(stat_id, opts)

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
  result = api_instance.list_stat_regions_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->list_stat_regions_for_stat: #{e}"
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



# **list_stat_services_for_stat**
> PaginatedCollection list_stat_services_for_stat(stat_id, opts)

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
  result = api_instance.list_stat_services_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->list_stat_services_for_stat: #{e}"
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



# **list_stat_signatures_for_stat**
> PaginatedCollection list_stat_signatures_for_stat(stat_id, opts)

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
  result = api_instance.list_stat_signatures_for_stat(stat_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->list_stat_signatures_for_stat: #{e}"
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
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**Stat**](Stat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_stat_compliance_control**
> StatComplianceControl show_stat_compliance_control(id, opts)

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
  result = api_instance.show_stat_compliance_control(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_stat_compliance_control: #{e}"
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



# **show_stat_custom_compliance_control**
> StatCustomComplianceControl show_stat_custom_compliance_control(id, opts)

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
  result = api_instance.show_stat_custom_compliance_control(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_stat_custom_compliance_control: #{e}"
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



# **show_stat_custom_signature**
> StatCustomSignature show_stat_custom_signature(id, opts)

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
  result = api_instance.show_stat_custom_signature(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_stat_custom_signature: #{e}"
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



# **show_stat_region**
> StatRegion show_stat_region(id, opts)

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
  result = api_instance.show_stat_region(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_stat_region: #{e}"
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



# **show_stat_service**
> StatService show_stat_service(id, opts)

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
  result = api_instance.show_stat_service(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_stat_service: #{e}"
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



# **show_stat_signature**
> StatSignature show_stat_signature(id, opts)

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
  result = api_instance.show_stat_signature(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling StatsApi->show_stat_signature: #{e}"
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



