# ESP::CustomSignatureDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**code** | **String** | The code for this definition | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**version_number** | **Integer** | Version of definition | [optional] 
**language** | **String** | The language of the definition. Valid values are ruby, javascript | [optional] 
**status** | **String** | Status of the definition. Valid values are editable, validating, active, archived, disabled | [optional] 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature | [optional] 
**custom_signature_id** | **Integer** | Associated Custom Signature ID | [optional] 
**results** | [**Array&lt;CustomSignatureResult&gt;**](CustomSignatureResult.md) | Associated Results | [optional] 
**result_ids** | **Array&lt;Integer&gt;** | Associated Results IDs | [optional] 


