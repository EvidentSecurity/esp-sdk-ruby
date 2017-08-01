# ESP::CustomSignatureResultAlert

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
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature | [optional] 
**custom_signature_id** | **Integer** | Associated Custom Signature Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


