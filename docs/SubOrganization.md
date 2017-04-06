# ESP::SubOrganization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**name** | **String** | Name of the Sub Organization | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Account Ids | 
**organization** | [**Organization**](Organization.md) | Associated Organization | 
**organization_id** | **Integer** | Associated Organization Id | 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | 
**team_ids** | **Array&lt;Integer&gt;** | Associated Team Ids | 


