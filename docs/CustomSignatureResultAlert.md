# ESP::CustomSignatureResultAlert

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**status** | **String** | Status of the alert. Valid values are fail, warn, error, pass, info | [optional] 
**resource** | **String** | Resource identifier in Amazon | [optional] 
**metadata** | **Object** | Metadata associated with the result | [optional] 
**tags** | **Array&lt;Object&gt;** | Tags associated with the result | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 
**region** | [**Region**](Region.md) | Associated Region | [optional] 
**region_id** | **Integer** | Associated Region ID | [optional] 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature | [optional] 
**custom_signature_id** | **Integer** | Associated Custom Signature ID | [optional] 


