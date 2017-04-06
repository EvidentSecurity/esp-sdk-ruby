# ESP::CustomSignatureDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | 
**code** | **String** | The code used for this result | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**error_messages** | **Array&lt;String&gt;** | Error messages that occurred while running the code | 
**language** | **String** | The language of the code | 
**status** | **String** | Status of the result | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | 
**definition** | [**CustomSignatureDefinition**](CustomSignatureDefinition.md) | Associated Custom Signature Definition | 
**definition_id** | **Integer** | Associated Custom Signature Definition Id | 
**region** | [**Region**](Region.md) | Associated Region | 
**region_id** | **Integer** | Associated Region Id | 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | 
**external_account_id** | **Integer** | Associated External Account Id | 
**alerts** | [**Array&lt;Alert&gt;**](Alert.md) | Associated Alerts | 
**alert_ids** | **Array&lt;Integer&gt;** | Associated Alert Ids | 


