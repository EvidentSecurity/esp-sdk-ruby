# ESP::Definition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | [optional] 
**code** | **String** | The code for this definition | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**language** | **String** | The language of the definition | [optional] 
**version_number** | **Integer** | Version of definition | [optional] 
**status** | **String** | Status of the definition | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature  | [optional] 
**custom_signature_id** | **Integer** | Associated Custom Signature Id | [optional] 
**results** | [**Array&lt;CustomSignatureResult&gt;**](CustomSignatureResult.md) | Associated Custom Signatures | [optional] 
**result_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Ids | [optional] 


