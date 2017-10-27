# ESP::Report

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**status** | **String** | Status of the report. Valid values are queued, processing, partial, complete, failed | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**sub_organization** | [**SubOrganization**](SubOrganization.md) | Associated Sub Organization | [optional] 
**sub_organization_id** | **Integer** | Associated Sub Organization ID | [optional] 
**team** | [**Team**](Team.md) | Associated Team | [optional] 
**team_id** | **Integer** | Associated Team ID | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 
**alerts** | [**Array&lt;Alert&gt;**](Alert.md) | Associated Alerts | [optional] 
**alert_ids** | **Array&lt;Integer&gt;** | Associated Alerts IDs | [optional] 
**stat** | [**Stat**](Stat.md) | Associated Stat | [optional] 
**stat_id** | **Integer** | Associated Stat ID | [optional] 


