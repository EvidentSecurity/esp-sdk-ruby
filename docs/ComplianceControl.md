# ESP::ComplianceControl

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | Created At | [optional] 
**name** | **String** | Name | [optional] 
**identifier** | **String** | The identifier of this control | [optional] 
**description** | **String** | The description for this control | [optional] 
**updated_at** | **DateTime** | Updated At | [optional] 
**position** | **Integer** | The position of this control within the Domain | [optional] 
**compliance_standard** | [**ComplianceStandard**](ComplianceStandard.md) | Associated Compliance Standard | [optional] 
**compliance_standard_id** | **Integer** | Associated Compliance Standard Id | [optional] 
**compliance_domain** | [**ComplianceDomain**](ComplianceDomain.md) | Associated Compliance Domain | [optional] 
**compliance_domain_id** | **Integer** | Associated Compliance Domain Id | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | [optional] 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signatures Ids | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


