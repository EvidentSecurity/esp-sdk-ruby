# ESP::AuditLogFileExportApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](AuditLogFileExportApi.md#create) | **POST** /api/v2/audit_logs/export/files.json_api | Export an Audit Log File
[**show**](AuditLogFileExportApi.md#show) | **GET** /api/v2/audit_logs/export/files/{id}.json_api | Show a single AuditLogFile


# **create**
> AuditLogFile create

Export an Audit Log File

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogFileExportApi.new

begin
  #Export an Audit Log File
  result = api_instance.create
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogFileExportApi->create: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuditLogFile**](AuditLogFile.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> AuditLogFile show(id, opts)

Show a single AuditLogFile

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogFileExportApi.new

id = 56 # Integer | AuditLogFile ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response.  See Including Objects for more information.
}

begin
  #Show a single AuditLogFile
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogFileExportApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| AuditLogFile ID | 
 **include** | **String**| Related objects that can be included in the response.  See Including Objects for more information. | [optional] 

### Return type

[**AuditLogFile**](AuditLogFile.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



