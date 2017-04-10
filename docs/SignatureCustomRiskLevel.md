# ESP::SignatureCustomRiskLevel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the signature. Valid values are Low, Medium, High | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**signature** | [**Signature**](Signature.md) | Associated Signature | [optional] 
**signature_id** | **Integer** | Associated Signature Id | [optional] 


