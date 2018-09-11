# ESP::ScheduledExportsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_export**](ScheduledExportsApi.md#activate_export) | **PATCH** /api/v2/scheduled_exports/{scheduled_export_id}/activate.json_api | Update a(n) Scheduled Export
[**create**](ScheduledExportsApi.md#create) | **POST** /api/v2/scheduled_exports.json_api | Create a(n) Scheduled Export
[**delete**](ScheduledExportsApi.md#delete) | **DELETE** /api/v2/scheduled_exports/{id}.json_api | Delete a(n) Scheduled Export
[**disable_export**](ScheduledExportsApi.md#disable_export) | **PATCH** /api/v2/scheduled_exports/{scheduled_export_id}/disable.json_api | Update a(n) Scheduled Export
[**list**](ScheduledExportsApi.md#list) | **PUT** /api/v2/scheduled_exports.json_api | Get a list of Scheduled Exports
[**show**](ScheduledExportsApi.md#show) | **GET** /api/v2/scheduled_exports/{id}.json_api | Show a single Scheduled Export
[**show_file_details**](ScheduledExportsApi.md#show_file_details) | **GET** /api/v2/reports/scheduled_export/files/{uuid}.json_api | Show a single Scheduled Export Result
[**unsubscribe_export**](ScheduledExportsApi.md#unsubscribe_export) | **PATCH** /api/v2/scheduled_exports/{uuid}/unsubscribe.json_api | Update a(n) Scheduled Export
[**update**](ScheduledExportsApi.md#update) | **PATCH** /api/v2/scheduled_exports/{id}.json_api | Update a(n) Scheduled Export


# **activate_export**
> ScheduledExport activate_export(scheduled_export_id, opts)

Update a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

scheduled_export_id = 56 # Integer | The id of the scheduled export to be activated

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
}

begin
  #Update a(n) Scheduled Export
  result = api_instance.activate_export(scheduled_export_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->activate_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduled_export_id** | **Integer**| The id of the scheduled export to be activated | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> ScheduledExport create(external_account_ids, frequency, hour, time_zone, opts)

Create a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

external_account_ids = [56] # Array<Integer> | The ids of the external accounts the report will be exported for

frequency = "frequency_example" # String | Frequency of the export. Valid values are weekly, daily, monthly

hour = 56 # Integer | Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23

time_zone = "time_zone_example" # String | Time zone to use when calculating hour and day

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  day: "day_example", # String | Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
  filter: {'key' => "filter_example"}, # Hash<String, String> | Params used to filter the alerts that will be exported
  name: "name_example", # String | A name that describes the export
  recipients: ["recipients_example"] # Array<String> | Email addresses the export will be sent to
}

begin
  #Create a(n) Scheduled Export
  result = api_instance.create(external_account_ids, frequency, hour, time_zone, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The ids of the external accounts the report will be exported for | 
 **frequency** | **String**| Frequency of the export. Valid values are weekly, daily, monthly | 
 **hour** | **Integer**| Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 | 
 **time_zone** | **String**| Time zone to use when calculating hour and day | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 
 **day** | **String**| Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Params used to filter the alerts that will be exported | [optional] 
 **name** | **String**| A name that describes the export | [optional] 
 **recipients** | [**Array&lt;String&gt;**](String.md)| Email addresses the export will be sent to | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **delete**
> Meta delete(id)

Delete a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

id = 56 # Integer | Scheduled Export ID


begin
  #Delete a(n) Scheduled Export
  result = api_instance.delete(id)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Scheduled Export ID | 

### Return type

[**Meta**](Meta.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **disable_export**
> ScheduledExport disable_export(scheduled_export_id, opts)

Update a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

scheduled_export_id = 56 # Integer | The id of the scheduled export to be disabled

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
}

begin
  #Update a(n) Scheduled Export
  result = api_instance.disable_export(scheduled_export_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->disable_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduled_export_id** | **Integer**| The id of the scheduled export to be disabled | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **list**
> PaginatedCollection list(opts)

Get a list of Scheduled Exports



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching.  Equality Searchable Attributes: [id, hour, day, status, recipients, time_zone, name] Matching Searchable Attributes: [recipients, time_zone, name] Limited Searchable Attribute: [frequency_eq] Sortable Attributes: [updated_at, created_at, id, name] Searchable Associations: [creator, external_accounts] See Searching Lists for more information. See the filter parameter of the association's list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  page: "{:number=>1,+:size=>20}" # String | Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
}

begin
  #Get a list of Scheduled Exports
  result = api_instance.list(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Filter Params for Searching.  Equality Searchable Attributes: [id, hour, day, status, recipients, time_zone, name] Matching Searchable Attributes: [recipients, time_zone, name] Limited Searchable Attribute: [frequency_eq] Sortable Attributes: [updated_at, created_at, id, name] Searchable Associations: [creator, external_accounts] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information. | [optional] 
 **page** | **String**| Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page. | [optional] [default to {:number&#x3D;&gt;1,+:size&#x3D;&gt;20}]

### Return type

[**PaginatedCollection**](PaginatedCollection.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> ScheduledExport show(id, opts)

Show a single Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

id = 56 # Integer | Scheduled Export ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
}

begin
  #Show a single Scheduled Export
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Scheduled Export ID | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_file_details**
> ScheduledExportResult show_file_details(uuid, opts)

Show a single Scheduled Export Result

The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

uuid = "uuid_example" # String | The uuid to access the result

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  scheduled_export See Including Objects for more information.
}

begin
  #Show a single Scheduled Export Result
  result = api_instance.show_file_details(uuid, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->show_file_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The uuid to access the result | 
 **include** | **String**| Related objects that can be included in the response:  scheduled_export See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExportResult**](ScheduledExportResult.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **unsubscribe_export**
> ScheduledExport unsubscribe_export(uuid, email, opts)

Update a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

uuid = "uuid_example" # String | The uuid of the export to unsubscribe

email = "email_example" # String | The email to unsubscribe. Nested under: \"data\": { \"meta\": { \"email\": ... } }

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
}

begin
  #Update a(n) Scheduled Export
  result = api_instance.unsubscribe_export(uuid, email, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->unsubscribe_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The uuid of the export to unsubscribe | 
 **email** | **String**| The email to unsubscribe. Nested under: \&quot;data\&quot;: { \&quot;meta\&quot;: { \&quot;email\&quot;: ... } } | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> ScheduledExport update(id, opts)

Update a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

id = 56 # Integer | Scheduled Export ID

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  day: "day_example", # String | Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
  external_account_ids: [56], # Array<Integer> | The ids of the external accounts the report will be exported for
  filter: {'key' => "filter_example"}, # Hash<String, String> | Params used to filter the alerts that will be exported
  hour: 56, # Integer | Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  name: "name_example", # String | A name that describes the export
  recipients: ["recipients_example"], # Array<String> | Email addresses the export will be sent to
  time_zone: "time_zone_example" # String | Time zone to use when calculating hour and day
}

begin
  #Update a(n) Scheduled Export
  result = api_instance.update(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Scheduled Export ID | 
 **include** | **String**| Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information. | [optional] 
 **day** | **String**| Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 | [optional] 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| The ids of the external accounts the report will be exported for | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Params used to filter the alerts that will be exported | [optional] 
 **hour** | **Integer**| Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 | [optional] 
 **name** | **String**| A name that describes the export | [optional] 
 **recipients** | [**Array&lt;String&gt;**](String.md)| Email addresses the export will be sent to | [optional] 
 **time_zone** | **String**| Time zone to use when calculating hour and day | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



