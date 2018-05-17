# ESP::ScheduledExportResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**uuid** | **String** | The uuid to access the result | [optional] 
**expires_at** | **DateTime** | ISO 8601 timestamp when the result will expire | [optional] 
**url** | **String** | A temporary URL where the file can be accessed | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**scheduled_export** | [**ScheduledExport**](ScheduledExport.md) | Associated Scheduled Export | [optional] 
**scheduled_export_id** | **Integer** | Associated Scheduled Export ID | [optional] 


