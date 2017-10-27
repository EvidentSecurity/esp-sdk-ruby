# ESP::Integration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**state** | **String** | The state the integration is in. Valid values are setup, active, error, disabled | [optional] 
**statuses** | **Array&lt;String&gt;** | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 
**name** | **String** | Name of the integration | [optional] 
**all_high_risk** | **BOOLEAN** | Send all high risk alerts | [optional] 
**all_medium_risk** | **BOOLEAN** | Send all medium risk alerts | [optional] 
**all_low_risk** | **BOOLEAN** | Send all low risk alerts | [optional] 
**send_updates** | **BOOLEAN** | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
**error_messages** | **Array&lt;String&gt;** | Array of error messages | [optional] 
**last_throttled_at** | **DateTime** | The time at which this integration was last throttled. | [optional] 
**send_when_suppressed** | **BOOLEAN** | Send notifications for suppressed alerts | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**creator** | [**User**](User.md) | Associated Creator | [optional] 
**creator_id** | **Integer** | Associated Creator ID | [optional] 
**service** | [**Service**](Service.md) | Associated Service | [optional] 
**service_id** | **Integer** | Associated Service ID | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Teams IDs | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Signatures | [optional] 
**signature_ids** | **Array&lt;Integer&gt;** | Associated Signatures IDs | [optional] 
**custom_signatures** | [**Array&lt;CustomSignature&gt;**](CustomSignature.md) | Associated Custom Signatures | [optional] 
**custom_signature_ids** | **Array&lt;Integer&gt;** | Associated Custom Signatures IDs | [optional] 


