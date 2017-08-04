# ESP::AuditLogFile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**file_name** | **String** |  | [optional] 
**format** | **String** |  | [optional] 
**created_at** | [**Datetime**](Datetime.md) |  | [optional] 
**updated_at** | [**Datetime**](Datetime.md) |  | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**user** | [**User**](User.md) | Associated User | [optional] 
**user_id** | **Integer** | Associated User Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


