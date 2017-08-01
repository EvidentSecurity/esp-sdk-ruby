# ESP::ComplianceDomain

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | Created At | [optional] 
**name** | **String** | Name | [optional] 
**identifier** | **String** | The identifier of this domain | [optional] 
**updated_at** | **DateTime** | Updated At | [optional] 
**position** | **Integer** | The position of this domain within the Standard | [optional] 
**compliance_standard** | [**ComplianceStandard**](ComplianceStandard.md) | Associated Compliance Standard | [optional] 
**compliance_standard_id** | **Integer** | Associated Compliance Standard Id | [optional] 
**compliance_controls** | [**Array&lt;ComplianceControl&gt;**](ComplianceControl.md) | Associated Compliance Controls | [optional] 
**compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Compliance Controls Ids | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


