# ESP::Organization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique Id | 
**name** | **String** | Name | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Ids | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Account Ids | [optional] 
**sub_organizations** | [**Array&lt;SubOrganization&gt;**](SubOrganization.md) | Associated Sub Organizations | [optional] 
**sub_organization_ids** | **Array&lt;Integer&gt;** | Associated Sub Organization Ids | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Team Ids | [optional] 
**users** | [**Array&lt;User&gt;**](User.md) | Associated Users | [optional] 
**user_ids** | **Array&lt;Integer&gt;** | Associated User Ids | [optional] 


