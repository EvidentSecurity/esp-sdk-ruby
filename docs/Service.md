# ESP::Service

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique ID | [optional] 
**code** | **String** | The code associated with this service | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**default_interval** | **Integer** | Default interval used for scans if a scan interval was not created | [optional] 
**minimum_interval** | **Integer** | Minimum interval allowed for scans on this service | [optional] 
**name** | **String** | The name of the service | [optional] 
**policy_name** | **String** | The policy name of the service. This matches the namespace set by Amazon here | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was last updated | [optional] 


