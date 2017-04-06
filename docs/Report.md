# ESP::Report

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**created_at** | **DateTime** | ISO 8601 timestamp when the alert was created | 
**status** | **String** | Status of the report | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the alert was last updated | 
**alerts** | [**Array&lt;Alert&gt;**](Alert.md) | Associated Alerts | 
**alert_ids** | **Array&lt;Integer&gt;** | Associated Alert Ids | 
**organization** | [**Organization**](Organization.md) | Associated Organization | 
**organization_id** | **Integer** | Associated Organization Id | 
**sub_organization** | [**SubOrganization**](SubOrganization.md) | Associated Sub Organization | 
**sub_organization_id** | **Integer** | Associated Sub Organization Id | 
**team** | [**Team**](Team.md) | Associated Team | 
**team_id** | **Integer** | Associated Team Id | 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | 
**external_account_id** | **Integer** | Associated External Account Id | 
**stat** | [**Stat**](Stat.md) |  | [optional] 


