# ESP::Suppression

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**reason** | **String** | The reason for the suppresion | [optional] 
**resource** | **String** | The resource string this suppression will suppress alerts for | [optional] 
**status** | **String** | The status of this suppresion | [optional] 
**suppression_type** | **String** | Type of suppression. Possible values are unique_identifiers, regions, and signatures | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the suppression was last updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**created_by** | **Array&lt;Object&gt;** | User That Created This Suppression | [optional] 
**created_by_id** | **Integer** | User That Created This Suppression&#39;s Id | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Account Ids | [optional] 
**regions** | [**Array&lt;Region&gt;**](Region.md) | Associated Regions | [optional] 
**region_ids** | **Array&lt;Integer&gt;** | Associated Region Ids | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | [optional] 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signature Ids | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Ids | [optional] 


