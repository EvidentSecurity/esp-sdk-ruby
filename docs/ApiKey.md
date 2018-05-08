# ESP::ApiKey

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**access_id** | **String** | Access ID | [optional] 
**name** | **String** | The name of the API Key | [optional] 
**last_used_at** | **DateTime** | ISO 8601 timestamp when the key was last used | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**secret_key** | **String** | Secret Key - This will only be returned once when the key is first created. | [optional] 
**user** | [**User**](User.md) | Associated User | [optional] 
**user_id** | **Integer** | Associated User ID | [optional] 


