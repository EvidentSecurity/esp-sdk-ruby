# ESP::ComplianceDomain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**identifier** | **String** | The identifier of this domain | [optional] 
**name** | **String** | Name | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**position** | **Integer** | The position of this domain within the Standard | [optional] 
**compliance_standard** | [**ComplianceStandard**](ComplianceStandard.md) | Associated Compliance Standard | [optional] 
**compliance_standard_id** | **Integer** | Associated Compliance Standard ID | [optional] 
**compliance_controls** | [**Array&lt;ComplianceControl&gt;**](ComplianceControl.md) | Associated Compliance Controls | [optional] 
**compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Compliance Controls IDs | [optional] 


