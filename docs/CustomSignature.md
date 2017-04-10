# ESP::CustomSignature

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**description** | **String** | The description of the custom signature | [optional] 
**identifier** | **String** | The identifier of the custom signature | [optional] 
**name** | **String** | The name of the custom signature | [optional] 
**resolution** | **String** | Details for how to resolve this custom signature | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the custom signature. Valid values are Low, Medium, High | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Team Ids | [optional] 
**definitions** | [**Array&lt;CustomSignatureDefinition&gt;**](CustomSignatureDefinition.md) | Associated Custom Signature Definitions | [optional] 
**definition_ids** | **Array&lt;Integer&gt;** | Associated Custom Signature Definition Ids | [optional] 


