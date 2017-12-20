# ESP::ComplianceStandard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | Name | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**description** | **String** | The description for this Compliance Standard | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**max_accounts** | **Integer** | The max number of external accounts allowed for the organization.  This is only returned by the organizations/:organization_id/compliance_standards endpoint. | [optional] 
**compliance_domains** | [**Array&lt;ComplianceDomain&gt;**](ComplianceDomain.md) | Associated Compliance Domains | [optional] 
**compliance_domain_ids** | **Array&lt;Integer&gt;** | Associated Compliance Domains IDs | [optional] 
**compliance_controls** | [**Array&lt;ComplianceControl&gt;**](ComplianceControl.md) | Associated Compliance Controls | [optional] 
**compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Compliance Controls IDs | [optional] 


