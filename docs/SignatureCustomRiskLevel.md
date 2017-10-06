# ESP::SignatureCustomRiskLevel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the signature. Valid values are low, medium, high | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 
**signature** | [**Signature**](Signature.md) | Associated Signature | [optional] 
**signature_id** | **Integer** | Associated Signature ID | [optional] 


