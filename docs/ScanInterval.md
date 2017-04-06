# ESP::ScanInterval

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**interval** | **Integer** | The interval, in minutes, this service will be scanned | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | 
**external_account** | [**ExternalAccount**](ExternalAccount.md) | Associated External Account | 
**external_account_id** | **Integer** | Associated External Account Id | 
**service** | [**Service**](Service.md) | Associated Service | 
**service_id** | **Integer** | Associated Service Id | 


