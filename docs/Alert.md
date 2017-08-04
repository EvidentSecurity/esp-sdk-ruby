# ESP::Alert

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**description** | **String** | The description of the user | [optional] 
**identifier** | **String** | The identifier of the signature | [optional] 
**name** | **String** | The name of the signature | [optional] 
**resolution** | **String** | Details for how to resolve this signature | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the signature. Valid values are Low, Medium, High | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**region** | [**Region**](Region.md) | Associated Region | [optional] 
**region_id** | **Integer** | Associated Region Id | [optional] 
**signature** | [**Signature**](Signature.md) | Associated Signature | [optional] 
**signature_id** | **Integer** | Associated Signature Id | [optional] 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature | [optional] 
**custom_signature_id** | **Integer** | Associated Custom Signature Id | [optional] 
**suppression** | [**Suppression**](Suppression.md) | Associated Suppression | [optional] 
**suppression_id** | **Integer** | Associated Suppression Id | [optional] 
**metadata** | [**Metadata**](Metadata.md) | Associated Metadata | [optional] 
**metadata_id** | **Integer** | Associated Metadata Id | [optional] 
**cloud_trail_events** | [**Array&lt;CloudTrailEvent&gt;**](CloudTrailEvent.md) | Associated Cloud Trail Events | [optional] 
**cloud_trail_event_ids** | **Array&lt;Integer&gt;** | Associated Cloud Trail Events Ids | [optional] 
**tags** | [**Array&lt;Tag&gt;**](Tag.md) | Associated Tags | [optional] 
**tag_ids** | **Array&lt;Integer&gt;** | Associated Tags Ids | [optional] 
**compliance_controls** | [**Array&lt;ComplianceControl&gt;**](ComplianceControl.md) | Associated Compliance Controls | [optional] 
**compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Compliance Controls Ids | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


