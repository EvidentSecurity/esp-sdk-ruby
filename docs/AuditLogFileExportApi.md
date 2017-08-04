# ESP::AuditLogFileExportApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](AuditLogFileExportApi.md#create) | **POST** /api/v2/audit_logs/export/files.json_api | Export an Audit Log File
[**show**](AuditLogFileExportApi.md#show) | **GET** /api/v2/audit_logs/export/files/{id}.json_api | Show a single Audit Log File


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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **show**
> AuditLogFile show(id, opts)

Show a single Audit Log File

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogFileExportApi.new

id = 56 # Integer | Audit Log File Id

opts = { 
  include: "include_example" # String | Objects that can be included in the response:  organization,user  See Including Objects for more information.
}

begin
  #Show a single Audit Log File
  result = api_instance.show(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogFileExportApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audit Log File Id | 
 **include** | **String**| Objects that can be included in the response:  organization,user  See Including Objects for more information. | [optional] 

### Return type

[**AuditLogFile**](AuditLogFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



