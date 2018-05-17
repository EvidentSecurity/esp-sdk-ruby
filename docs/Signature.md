# ESP::Signature

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**description** | **String** | The description of the signature | [optional] 
**identifier** | **String** | The identifier of the signature | [optional] 
**name** | **String** | The name of the signature | [optional] 
**resolution** | **String** | Details for how to resolve this signature | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the signature. Valid values are low, medium, high | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**custom_risk_level** | **String** | The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high | [optional] 
**service** | [**Service**](Service.md) | Associated Service | [optional] 
**service_id** | **Integer** | Associated Service ID | [optional] 
**disabled_external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated Disabled External Accounts | [optional] 
**suppressions** | [**Array&lt;Suppression&gt;**](Suppression.md) | Associated Suppressions | [optional] 
**suppression_ids** | **Array&lt;Integer&gt;** | Associated Suppressions IDs | [optional] 


