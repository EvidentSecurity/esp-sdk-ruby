# ESP::Report

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the alert was created | [optional] 
**status** | **String** | Status of the report | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the alert was last updated | [optional] 
**alerts** | [**Array&lt;Alert&gt;**](Alert.md) | Associated Alerts | [optional] 
**alert_ids** | **Array&lt;Integer&gt;** | Associated Alert Ids | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**sub_organization** | [**SubOrganization**](SubOrganization.md) | Associated Sub Organization | [optional] 
**sub_organization_id** | **Integer** | Associated Sub Organization Id | [optional] 
**team** | [**Team**](Team.md) | Associated Team | [optional] 
**team_id** | **Integer** | Associated Team Id | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**stat** | [**Stat**](Stat.md) |  | [optional] 


