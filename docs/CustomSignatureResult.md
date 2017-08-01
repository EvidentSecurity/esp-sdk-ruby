# ESP::CustomSignatureResult

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
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**region** | [**Region**](Region.md) | Associated Region | [optional] 
**region_id** | **Integer** | Associated Region Id | [optional] 
**definition** | [**CustomSignatureDefinition**](CustomSignatureDefinition.md) | Associated Definition | [optional] 
**definition_id** | **Integer** | Associated Definition Id | [optional] 
**alerts** | [**Array&lt;CustomSignatureResultAlert&gt;**](CustomSignatureResultAlert.md) | Associated Alerts | [optional] 
**alert_ids** | **Array&lt;Integer&gt;** | Associated Alerts Ids | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


