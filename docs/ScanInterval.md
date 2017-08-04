# ESP::ScanInterval

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**interval** | **Integer** | The interval, in minutes, this service will be scanned | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | [optional] 
**external_account_id** | **Integer** | Associated External Account Id | [optional] 
**service** | [**Service**](Service.md) | Associated Service | [optional] 
**service_id** | **Integer** | Associated Service Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


