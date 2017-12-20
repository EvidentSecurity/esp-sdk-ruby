# ESP::ExternalAccountAzure

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**subscription_id** | **String** | Azure subscription ID | [optional] 
**client_id** | **String** | Azure client ID | [optional] 
**tenant_id** | **String** | Azure tenant ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**last_message_received_at** | **DateTime** | ISO 8601 timestamp when the last event was received from Azure. This is updated hourly. | [optional] 
**app_key** | **String** | Azure app key | [optional] 
**channel_url** | **String** | The URL for the azure account channel.  It is only returned when first created or when reset. | [optional] 
**channel_active** | **BOOLEAN** | Returns true if the channel is active | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account ID | [optional] 


