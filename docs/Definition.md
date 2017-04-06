# ESP::Definition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**code** | **String** | The code for this definition | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**language** | **String** | The language of the definition | 
**version_number** | **Integer** | Version of definition | 
**status** | **String** | Status of the definition | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature  | 
**custom_signature_id** | **Integer** | Associated Custom Signature Id | 
**results** | [**Array&lt;CustomSignatureResult&gt;**](CustomSignatureResult.md) | Associated Custom Signatures | 
**result_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Ids | 


