# ESP::CustomSignatureDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**code** | **String** | The code used for this result | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**error_messages** | **Array&lt;String&gt;** | Error messages that occurred while running the code | [optional] 
**language** | **String** | The language of the code | [optional] 
**status** | **String** | Status of the result | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**definition** | [**CustomSignatureDefinition**](CustomSignatureDefinition.md) | Associated Custom Signature Definition | [optional] 
**definition_id** | **Integer** | Associated Custom Signature Definition Id | [optional] 
**region** | [**Region**](Region.md) | Associated Region | [optional] 
**region_id** | **Integer** | Associated Region Id | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**alerts** | [**Array&lt;Alert&gt;**](Alert.md) | Associated Alerts | [optional] 
**alert_ids** | **Array&lt;Integer&gt;** | Associated Alert Ids | [optional] 


