# ESP::ScheduledExport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**type** | **String** | Type of export to control frequency. Valid values are weekly, daily, monthly | [optional] 
**status** | **String** | Status of the scheduled export. Valid values are active, unsubscribed, disabled | [optional] 
**send_with_attachment** | **BOOLEAN** | Whether or not to send the file as an attachment. Valid values are true, false | [optional] 
**filter** | **Object** | Params used to filter the alerts that will be exported | [optional] 
**authenticated** | **BOOLEAN** | Whether or not require authentication before viewing the file. Valid values are true, false | [optional] 
**hour** | **Integer** | Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 | [optional] 
**day** | **String** | Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 0 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 | [optional] 
**time_zone** | **String** | Time zone to use when calculating hour and day | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**recipient** | **String** | Email address the export will be sent to if unauthenticated | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 
**creator** | [**User**](User.md) | Associated Creator | [optional] 
**creator_id** | **Integer** | Associated Creator ID | [optional] 
**user** | [**User**](User.md) | Associated User | [optional] 
**user_id** | **Integer** | Associated User ID | [optional] 


