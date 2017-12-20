# ESP::IntegrationWebhook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**url** | **String** | The URL endpoint for the webhook | [optional] 
**throttle_rate** | **Integer** | The maximum number of alerts that may be sent through the integration every minute. | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**integration** | [**Integration**](Integration.md) | Associated Integration | [optional] 
**integration_id** | **Integer** | Associated Integration ID | [optional] 


