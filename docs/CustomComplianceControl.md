# ESP::CustomComplianceControl

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | Name | [optional] 
**identifier** | **String** | The identifier of this custom control | [optional] 
**description** | **String** | The description for this custom control | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**position** | **Integer** | The position of this custom control within the custom domain | [optional] 
**custom_compliance_standard** | [**CustomComplianceStandard**](CustomComplianceStandard.md) | Associated Custom Compliance Standard | [optional] 
**custom_compliance_standard_id** | **Integer** | Associated Custom Compliance Standard ID | [optional] 
**custom_compliance_domain** | [**CustomComplianceDomain**](CustomComplianceDomain.md) | Associated Custom Compliance Domain | [optional] 
**custom_compliance_domain_id** | **Integer** | Associated Custom Compliance Domain ID | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | [optional] 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signatures IDs | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signatures IDs | [optional] 


