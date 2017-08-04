# ESP::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**email** | **String** | The email of the user | [optional] 
**time_zone** | **String** | The time-zone of the user | [optional] 
**first_name** | **String** | The first name of the user | [optional] 
**last_name** | **String** | The last name of the user | [optional] 
**phone** | **String** | The phone number associated with the user | [optional] 
**mfa_enabled** | **BOOLEAN** | Specifies whether Multi Factor Authentication is enabled or not | [optional] 
**disable_daily_emails** | **BOOLEAN** | This option toggles the daily emails option | [optional] 
**locked** | **BOOLEAN** | Specifies whether the user account is locked from accessing ESP | [optional] 
**locked_at** | **DateTime** | The time the user account was locked | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**sub_organizations** | [**Array&lt;SubOrganization&gt;**](SubOrganization.md) | Associated Sub Organizations | [optional] 
**sub_organization_ids** | **Array&lt;Integer&gt;** | Associated Sub Organizations Ids | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Teams Ids | [optional] 
**role** | [**Role**](Role.md) | Associated Role | [optional] 
**role_id** | **Integer** | Associated Role Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


