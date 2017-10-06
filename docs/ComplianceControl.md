# ESP::ComplianceControl

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**name** | **String** | Name | [optional] 
**identifier** | **String** | The identifier of this control | [optional] 
**description** | **String** | The description for this control | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**position** | **Integer** | The position of this control within the Domain | [optional] 
**compliance_standard** | [**ComplianceStandard**](ComplianceStandard.md) | Associated Compliance Standard | [optional] 
**compliance_standard_id** | **Integer** | Associated Compliance Standard ID | [optional] 
**compliance_domain** | [**ComplianceDomain**](ComplianceDomain.md) | Associated Compliance Domain | [optional] 
**compliance_domain_id** | **Integer** | Associated Compliance Domain ID | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | [optional] 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signatures IDs | [optional] 


