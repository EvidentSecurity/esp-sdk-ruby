# ESP::Suppression

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**reason** | **String** | The reason for the suppresion | [optional] 
**resource** | **String** | The resource string this suppression will suppress alerts for | [optional] 
**suppression_type** | **String** | Type of suppression. | [optional] 
**status** | **String** | The status of this suppresion. Valid values are active, inactive | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**created_by** | [**User**](User.md) | Associated Created By | [optional] 
**created_by_id** | **Integer** | Associated Created By ID | [optional] 
**regions** | [**Array&lt;Region&gt;**](Region.md) | Associated Regions | [optional] 
**region_ids** | **Array&lt;Integer&gt;** | Associated Regions IDs | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Accounts IDs | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | [optional] 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signatures IDs | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signatures IDs | [optional] 


