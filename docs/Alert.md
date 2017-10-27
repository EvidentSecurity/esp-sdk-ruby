# ESP::Alert

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**status** | **String** | Status of the alert. Valid values are fail, warn, error, pass, info | [optional] 
**risk_level** | **String** | The risk-level of the problem identified by the signature or custom signature. Valid values are low, medium, high | [optional] 
**resource** | **String** | Resource identifier in Amazon | [optional] 
**ended_reason** | **String** | The reason this alert ended. Valid values are from_api, new_alert, from_scan, not_present_after_scan, signature_deleted, custom_signature_deleted, suppression_created, suppression_deactivated, custom_risk_level_created, custom_risk_level_deleted | [optional] 
**replaced_by_id** | **Integer** | The ID of the alert that replaced this alert | [optional] 
**replaced_by_status** | **String** | The status of the alert that replaced this alert | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**started_at** | **DateTime** | ISO 8601 timestamp when the alert started being active | [optional] 
**ended_at** | **DateTime** | ISO 8601 timestamp when the alert stopped being active | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 
**region** | [**Region**](Region.md) | Associated Region | [optional] 
**region_id** | **Integer** | Associated Region ID | [optional] 
**signature** | [**Signature**](Signature.md) | Associated Signature | [optional] 
**signature_id** | **Integer** | Associated Signature ID | [optional] 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Associated Custom Signature | [optional] 
**custom_signature_id** | **Integer** | Associated Custom Signature ID | [optional] 
**suppression** | [**Suppression**](Suppression.md) | Associated Suppression | [optional] 
**suppression_id** | **Integer** | Associated Suppression ID | [optional] 
**metadata** | [**Metadata**](Metadata.md) | Associated Metadata | [optional] 
**metadata_id** | **Integer** | Associated Metadata ID | [optional] 
**cloud_trail_events** | [**Array&lt;CloudTrailEvent&gt;**](CloudTrailEvent.md) | Associated Cloud Trail Events | [optional] 
**cloud_trail_event_ids** | **Array&lt;Integer&gt;** | Associated Cloud Trail Events IDs | [optional] 
**tags** | [**Array&lt;Tag&gt;**](Tag.md) | Associated Tags | [optional] 
**tag_ids** | **Array&lt;Integer&gt;** | Associated Tags IDs | [optional] 
**compliance_controls** | [**Array&lt;ComplianceControl&gt;**](ComplianceControl.md) | Associated Compliance Controls | [optional] 
**compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Compliance Controls IDs | [optional] 
**custom_compliance_controls** | [**Array&lt;CustomComplianceControl&gt;**](CustomComplianceControl.md) | Associated Custom Compliance Controls | [optional] 
**custom_compliance_control_ids** | **Array&lt;Integer&gt;** | Associated Custom Compliance Controls IDs | [optional] 


