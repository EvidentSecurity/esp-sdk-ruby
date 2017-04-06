# ESP::Suppression

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**reason** | **String** | The reason for the suppresion | 
**resource** | **String** | The resource string this suppression will suppress alerts for | 
**status** | **String** | The status of this suppresion | 
**suppression_type** | **String** | Type of suppression. Possible values are unique_identifiers, regions, and signatures | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the suppression was last updated | 
**organization** | [**Organization**](Organization.md) | Associated Organization | 
**organization_id** | **Integer** | Associated Organization Id | 
**created_by** | **Array&lt;Object&gt;** | User That Created This Suppression | [optional] 
**created_by_id** | **Integer** | User That Created This Suppression&#39;s Id | 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Account Ids | 
**regions** | [**Array&lt;Region&gt;**](Region.md) | Associated Regions | 
**region_ids** | **Array&lt;Integer&gt;** | Associated Region Ids | 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signature Ids | 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Ids | 


