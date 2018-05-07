# ESP::Report

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**status** | **String** | Status of the report. Valid values are queued, processing, partial, complete, failed | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 
**alerts** | [**Array&lt;Alert&gt;**](Alert.md) | Associated Alerts | [optional] 
**stat** | [**Stat**](Stat.md) | Associated Stat | [optional] 


