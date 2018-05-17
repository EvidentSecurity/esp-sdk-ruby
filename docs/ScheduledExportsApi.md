# ESP::ScheduledExportsApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_export**](ScheduledExportsApi.md#activate_export) | **PATCH** /api/v2/scheduled_exports/{scheduled_export_id}/activate.json_api | Update a(n) Scheduled Export
[**create**](ScheduledExportsApi.md#create) | **POST** /api/v2/scheduled_exports.json_api | Create a(n) Scheduled Export
[**delete**](ScheduledExportsApi.md#delete) | **DELETE** /api/v2/scheduled_exports/{id}.json_api | Delete a(n) Scheduled Export
[**disable_export**](ScheduledExportsApi.md#disable_export) | **PATCH** /api/v2/scheduled_exports/{scheduled_export_id}/disable.json_api | Update a(n) Scheduled Export
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
  include: "include_example" # String | Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **create**
> ScheduledExport create(authenticated, external_account_id, hour, time_zone, type, opts)

Create a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

authenticated = true # BOOLEAN | Whether or not require authentication before viewing the file. Valid values are true, false

external_account_id = 56 # Integer | The id of the external account the report will be exported for

hour = 56 # Integer | Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23

time_zone = "time_zone_example" # String | Time zone to use when calculating hour and day

type = "type_example" # String | Type of export to control frequency. Valid values are weekly, daily, monthly

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information.
  day: "day_example", # String | Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 0 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
  filter: {'key' => "filter_example"}, # Hash<String, String> | Params used to filter the alerts that will be exported
  recipient: "recipient_example", # String | Email address the export will be sent to if unauthenticated
  send_with_attachment: true, # BOOLEAN | Whether or not to send the file as an attachment. Valid values are true, false
  user_id: 56 # Integer | The id of the user the report will be emailed to when authenticated is selected
}

begin
  #Create a(n) Scheduled Export
  result = api_instance.create(authenticated, external_account_id, hour, time_zone, type, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticated** | **BOOLEAN**| Whether or not require authentication before viewing the file. Valid values are true, false | 
 **external_account_id** | **Integer**| The id of the external account the report will be exported for | 
 **hour** | **Integer**| Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 | 
 **time_zone** | **String**| Time zone to use when calculating hour and day | 
 **type** | **String**| Type of export to control frequency. Valid values are weekly, daily, monthly | 
 **include** | **String**| Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information. | [optional] 
 **day** | **String**| Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 0 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Params used to filter the alerts that will be exported | [optional] 
 **recipient** | **String**| Email address the export will be sent to if unauthenticated | [optional] 
 **send_with_attachment** | **BOOLEAN**| Whether or not to send the file as an attachment. Valid values are true, false | [optional] 
 **user_id** | **Integer**| The id of the user the report will be emailed to when authenticated is selected | [optional] 

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
  include: "include_example" # String | Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information. | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

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
  include: "include_example" # String | Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information.
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
 **include** | **String**| Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information. | [optional] 

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
> ScheduledExport unsubscribe_export(uuid, opts)

Update a(n) Scheduled Export



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::ScheduledExportsApi.new

uuid = "uuid_example" # String | The uuid of the export to unsubscribe

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information.
}

begin
  #Update a(n) Scheduled Export
  result = api_instance.unsubscribe_export(uuid, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling ScheduledExportsApi->unsubscribe_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| The uuid of the export to unsubscribe | 
 **include** | **String**| Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information. | [optional] 

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
  include: "include_example", # String | Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information.
  day: "day_example", # String | Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 0 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
  filter: {'key' => "filter_example"}, # Hash<String, String> | Params used to filter the alerts that will be exported
  hour: 56, # Integer | Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  send_with_attachment: true, # BOOLEAN | Whether or not to send the file as an attachment. Valid values are true, false
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
 **include** | **String**| Related objects that can be included in the response:  external_account, creator, user See Including Objects for more information. | [optional] 
 **day** | **String**| Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 0 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 | [optional] 
 **filter** | [**Hash&lt;String, String&gt;**](String.md)| Params used to filter the alerts that will be exported | [optional] 
 **hour** | **Integer**| Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 | [optional] 
 **send_with_attachment** | **BOOLEAN**| Whether or not to send the file as an attachment. Valid values are true, false | [optional] 
 **time_zone** | **String**| Time zone to use when calculating hour and day | [optional] 

### Return type

[**ScheduledExport**](ScheduledExport.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



