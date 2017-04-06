# ESP::CustomSignature

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**description** | **String** | The description of the custom signature | 
**identifier** | **String** | The identifier of the custom signature | 
**name** | **String** | The name of the custom signature | 
**resolution** | **String** | Details for how to resolve this custom signature | 
**risk_level** | **String** | The risk-level of the problem identified by the custom signature. Valid values are Low, Medium, High | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Team Ids | [optional] 
**definitions** | [**Array&lt;CustomSignatureDefinition&gt;**](CustomSignatureDefinition.md) | Associated Custom Signature Definitions | [optional] 
**definition_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Definition Ids | [optional] 


