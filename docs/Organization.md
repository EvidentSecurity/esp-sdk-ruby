# ESP::Organization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | Name of the organization | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**subscription** | [**Subscription**](Subscription.md) | Associated Subscription | [optional] 
**subscription_id** | **Integer** | Associated Subscription Id | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signatures Ids | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Accounts Ids | [optional] 
**sub_organizations** | [**Array&lt;SubOrganization&gt;**](SubOrganization.md) | Associated Sub Organizations | [optional] 
**sub_organization_ids** | **Array&lt;Integer&gt;** | Associated Sub Organizations Ids | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Teams Ids | [optional] 
**users** | [**Array&lt;User&gt;**](User.md) | Associated Users | [optional] 
**user_ids** | **Array&lt;Integer&gt;** | Associated Users Ids | [optional] 
**compliance_standards** | [**Array&lt;ComplianceStandard&gt;**](ComplianceStandard.md) | Associated Compliance Standards | [optional] 
**compliance_standard_ids** | **Array&lt;Integer&gt;** | Associated Compliance Standards Ids | [optional] 
**integrations** | [**Array&lt;Integration&gt;**](Integration.md) | Associated Integrations | [optional] 
**integration_ids** | **Array&lt;Integer&gt;** | Associated Integrations Ids | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


