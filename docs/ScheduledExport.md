# ESP::ScheduledExport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | A name that describes the export | [optional] 
**frequency** | **String** | Frequency of the export. Valid values are weekly, daily, monthly | [optional] 
**status** | **String** | Status of the scheduled export. Valid values are active, unsubscribed, disabled | [optional] 
**filter** | **Object** | Params used to filter the alerts that will be exported | [optional] 
**hour** | **Integer** | Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 | [optional] 
**day** | **String** | Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 | [optional] 
**time_zone** | **String** | Time zone to use when calculating hour and day | [optional] 
**recipients** | **Array&lt;String&gt;** | Email addresses the export will be sent to | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Accounts IDs | [optional] 
**creator** | [**User**](User.md) | Associated Creator | [optional] 
**creator_id** | **Integer** | Associated Creator ID | [optional] 


