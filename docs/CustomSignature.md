# ESP::CustomSignature

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**description** | **String** | The description of the custom signature that is displayed on alerts | [optional] 
**identifier** | **String** | The identifier to use for the custom signature. Common format is AWS:- such as AWS:IAM-001 | [optional] 
**include_new_accounts** | **BOOLEAN** | When enabled, automatically adds new accounts to this signature. This field can only be set by an organization level user. | [optional] 
**name** | **String** | The name of the custom signature | [optional] 
**resolution** | **String** | Details for how to resolve this custom signature that is displayed on alerts | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the custom signature. Valid values are low, medium, high | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Accounts IDs | [optional] 
**definitions** | [**Array&lt;CustomSignatureDefinition&gt;**](CustomSignatureDefinition.md) | Associated Definitions | [optional] 
**definition_ids** | **Array&lt;Integer&gt;** | Associated Definitions IDs | [optional] 
**suppressions** | [**Array&lt;Suppression&gt;**](Suppression.md) | Associated Suppressions | [optional] 
**suppression_ids** | **Array&lt;Integer&gt;** | Associated Suppressions IDs | [optional] 
**service** | [**Service**](Service.md) | Associated Service | [optional] 
**service_id** | **Integer** | Associated Service ID | [optional] 


