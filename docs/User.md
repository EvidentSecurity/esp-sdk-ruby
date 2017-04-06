# ESP::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique Id | 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | 
**email** | **String** | The email of the user | 
**time_zone** | **String** | The time-zone of the user | 
**first_name** | **String** | The first name of the user | 
**last_name** | **String** | The last name of the user | 
**phone** | **Object** | The phone number associated with the user | 
**mfa_enabled** | **Object** |  | 
**disable_daily_emails** | **Object** | This option toggles the daily emails option | 
**locked** | **Object** |  | 
**locked_at** | **Object** |  | 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | 
**organization** | [**Organization**](Organization.md) | Associated Organization | 
**organization_id** | **Integer** | Associated Organization Id | 
**sub_organizations** | [**Array&lt;SubOrganization&gt;**](SubOrganization.md) | Associated Sub Organizations | 
**sub_organization_ids** | **Array&lt;Integer&gt;** | Associated Sub Organization Ids | 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | 
**team_ids** | **Array&lt;Integer&gt;** | Associated Team Ids | 
**role** | [**Role**](Role.md) | Associated Role | 
**role_id** | **Integer** | Associated Role Id | 


