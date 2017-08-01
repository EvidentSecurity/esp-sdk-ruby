# ESP::Team

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | Name | [optional] 
**created_at** | **DateTime** | Created At | [optional] 
**updated_at** | **DateTime** | Updated At | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signatures Ids | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Accounts Ids | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**sub_organization** | [**SubOrganization**](SubOrganization.md) | Associated Sub Organization | [optional] 
**sub_organization_id** | **Integer** | Associated Sub Organization Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


