# ESP::SignatureCustomRiskLevel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**risk_level** | **String** | The risk-level of the problem identified by the signature. Valid values are Low, Medium, High | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | 
**external_account_id** | **Integer** | Associated External Account Id | 
**signature** | [**Signature**](Signature.md) | Associated Signature | 
**signature_id** | **Integer** | Associated Signature Id | 


