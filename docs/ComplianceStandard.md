# ESP::ComplianceStandard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | Created At | [optional] 
**name** | **String** | Name | [optional] 
**description** | **String** | The description for this Compliance Standard | [optional] 
**updated_at** | **DateTime** | Updated At | [optional] 
**compliance_domains** | [**Array&lt;ComplianceDomain&gt;**](ComplianceDomain.md) | Associated Compliance Domains | [optional] 
**compliance_domain_ids** | **Array&lt;Integer&gt;** | Associated Compliance Domains Ids | [optional] 
**compliance_controls** | [**Array&lt;ComplianceControl&gt;**](ComplianceControl.md) | Associated Compliance Controls | [optional] 
**compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Compliance Controls Ids | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


