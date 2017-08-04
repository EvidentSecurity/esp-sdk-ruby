# ESP::AuditLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**item_type** | **String** | Item that was changed | [optional] 
**item_id** | **Integer** | ID of the item that was changed | [optional] 
**action** | **String** | Action attempted on the item | [optional] 
**successful** | **BOOLEAN** | Shows if the action was successful | [optional] 
**access_denied** | **BOOLEAN** | Shows if access was denied | [optional] 
**user_ip** | **String** | The IP of the user attempting the action | [optional] 
**platform** | **String** | The platform the user attempted the action from | [optional] 
**created_at** | [**Datetime**](Datetime.md) | A timestamp of when this record was created | [optional] 
**updated_at** | [**Datetime**](Datetime.md) | A timestamp of the last time this record was changed | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**user** | [**User**](User.md) | Associated User | [optional] 
**user_id** | **Integer** | Associated User Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


