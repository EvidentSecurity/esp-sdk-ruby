# ESP::CustomComplianceDomain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**identifier** | **String** | The identifier of this custom domain | [optional] 
**name** | **String** | Name | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**position** | **Integer** | The position of this custom domain within the custom standard | [optional] 
**custom_compliance_standard** | [**CustomComplianceStandard**](CustomComplianceStandard.md) | Associated Custom Compliance Standard | [optional] 
**custom_compliance_standard_id** | **Integer** | Associated Custom Compliance Standard ID | [optional] 
**custom_compliance_controls** | [**Array&lt;CustomComplianceControl&gt;**](CustomComplianceControl.md) | Associated Custom Compliance Controls | [optional] 
**custom_compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Custom Compliance Controls IDs | [optional] 


