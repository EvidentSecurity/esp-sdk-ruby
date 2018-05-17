# ESP::ExportedReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**recipient_id** | **Integer** | Associated Recipient ID | [optional] 
**recipient_type** | **String** | Polymorphic recipient type. Valid values are User, ScheduledExportResult | [optional] 
**report_ids** | **Array&lt;Integer&gt;** | An array of report IDs to export alerts for | [optional] 
**format** | **String** | The file format of the export. Valid values are csv, json, pdf | [optional] 
**url** | **String** | A temporary URL where the file can be accessed | [optional] 
**file_name** | **String** | The name of the file | [optional] 
**filter** | **Object** | Params used to filter the alerts that will be exported | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**recipient** | [**User**](User.md) | Associated Recipient | [optional] 


