# ESP::AuditLogExportApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_file**](AuditLogExportApi.md#request_file) | **POST** /api/v2/audit_logs/export/files.json_api | Export an Audit Log File
[**show_file_details**](AuditLogExportApi.md#show_file_details) | **GET** /api/v2/audit_logs/export/files/{id}.json_api | Show a single Audit Log File


# **request_file**
> AuditLogFile request_file(opts)

Export an Audit Log File

An email will be sent to the user(having organization level access) requesting creation once the file is ready for download. The file will have all audit logs for the organization in CSV format.  The URL and filename in the response will be blank on create but will be present in the response on the show endpoint once the export has been generated.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogExportApi.new

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, user See Including Objects for more information.
}

begin
  #Export an Audit Log File
  result = api_instance.request_file(opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogExportApi->request_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String**| Related objects that can be included in the response:  organization, user See Including Objects for more information. | [optional] 

### Return type

[**AuditLogFile**](AuditLogFile.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show_file_details**
> AuditLogFile show_file_details(id, opts)

Show a single Audit Log File

The URL returned will expire and will no longer work after the expiration

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::AuditLogExportApi.new

id = 56 # Integer | Audit Log File ID

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  organization, user See Including Objects for more information.
}

begin
  #Show a single Audit Log File
  result = api_instance.show_file_details(id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AuditLogExportApi->show_file_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audit Log File ID | 
 **include** | **String**| Related objects that can be included in the response:  organization, user See Including Objects for more information. | [optional] 

### Return type

[**AuditLogFile**](AuditLogFile.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



