# ESP::Alert

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique Id | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**ended_at** | **DateTime** | ISO 8601 timestamp when the alert stopped being active | [optional] 
**resource** | **String** | Resource identifier in Amazon | [optional] 
**started_at** | **DateTime** | ISO 8601 timestamp when the alert started being active | [optional] 
**status** | **String** | Status of the alert | [optional] 
**risk_level** | **String** | Risk Level of the alert | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**custom_signature** | [**CustomSignature**](CustomSignature.md) | Either a signature or custom signature but not both will be present | [optional] 
**custom_signature_id** | **Integer** | Either a signature or custom signature but not both will be present | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**region** | [**Region**](Region.md) | Associated Region | [optional] 
**region_id** | **Integer** | Associated Region Id | [optional] 
**signature** | [**Signature**](Signature.md) | Either a signature or custom signature but not both will be present | [optional] 
**signature_id** | **Integer** | Either a signature or custom signature but not both will be present | [optional] 
**supression** | [**Suppression**](Suppression.md) | If present the alert was suppressed | [optional] 
**supression_id** | **Integer** | If present the alert was suppressed | [optional] 
**metadata** | [**Metadata**](Metadata.md) | Associated Metadata | [optional] 
**metadata_id** | **Integer** | Associated Metadata Id | [optional] 
**cloud_trail_events** | [**Array&lt;CloudTrailEvent&gt;**](CloudTrailEvent.md) | Associated Cloud Trail Events | [optional] 
**cloud_trail_event_ids** | **Array&lt;Integer&gt;** | Associated Cloud Trail Event Ids | [optional] 
**tags** | [**Array&lt;Tag&gt;**](Tag.md) | Associated Tags | [optional] 
**tag_ids** | **Array&lt;Integer&gt;** | Associated Tag Ids | [optional] 


