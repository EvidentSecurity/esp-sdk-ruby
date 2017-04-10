# ESP::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique Id | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**email** | **String** | The email of the user | [optional] 
**time_zone** | **String** | The time-zone of the user | [optional] 
**first_name** | **String** | The first name of the user | [optional] 
**last_name** | **String** | The last name of the user | [optional] 
**phone** | **Object** | The phone number associated with the user | [optional] 
**mfa_enabled** | **Object** |  | [optional] 
**disable_daily_emails** | **Object** | This option toggles the daily emails option | [optional] 
**locked** | **Object** |  | [optional] 
**locked_at** | **Object** |  | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**sub_organizations** | [**Array&lt;SubOrganization&gt;**](SubOrganization.md) | Associated Sub Organizations | [optional] 
**sub_organization_ids** | **Array&lt;Integer&gt;** | Associated Sub Organization Ids | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Team Ids | [optional] 
**role** | [**Role**](Role.md) | Associated Role | [optional] 
**role_id** | **Integer** | Associated Role Id | [optional] 


