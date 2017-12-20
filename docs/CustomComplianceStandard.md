# ESP::CustomComplianceStandard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**organization_id** | **Integer** | The ID of the organization this custom compliance standard belongs to | [optional] 
**name** | **String** | Name | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**description** | **String** | The description for this Compliance Standard | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**max_accounts** | **Integer** | The maximum number of external accounts that can be added to the custom compliance standard | [optional] 
**max_domains** | **Integer** | The maximum number of custom compliance domains that can be added to the custom compliance standard | [optional] 
**max_controls** | **Integer** | The maximum number of custom compliance controls that can be added to the custom compliance standard | [optional] 
**custom_compliance_domains** | [**Array&lt;CustomComplianceDomain&gt;**](CustomComplianceDomain.md) | Associated Custom Compliance Domains | [optional] 
**custom_compliance_domain_ids** | **Array&lt;Integer&gt;** | Associated Custom Compliance Domains IDs | [optional] 
**custom_compliance_controls** | [**Array&lt;CustomComplianceControl&gt;**](CustomComplianceControl.md) | Associated Custom Compliance Controls | [optional] 
**custom_compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Custom Compliance Controls IDs | [optional] 


