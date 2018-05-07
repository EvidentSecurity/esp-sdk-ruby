# ESP::Attribution

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**event_id** | **Integer** | GUID to uniquely identify each event | [optional] 
**event_name** | **String** | The requested action, which is one of the actions listed in the API Reference for the service | [optional] 
**event_time** | **DateTime** | ISO 8601 timestamp when the event occurred | [optional] 
**raw_event** | **Object** | The event as it is sent in | [optional] 
**user** | **String** | The user associated with the event | [optional] 
**ip_address** | **String** | The apparent IP address that the request was made from for the given event | [optional] 
**scope_name** | **String** | The agent through which the request was made, such as the AWS Management Console or an AWS SDK | [optional] 
**alert** | [**Alert**](Alert.md) | Associated Alert | [optional] 
**alert_id** | **Integer** | Associated Alert ID | [optional] 


