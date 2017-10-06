# ESP::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**email** | **String** | The email of the user | [optional] 
**time_zone** | **String** | The time zone of the user. See Time Zones for a list of valid time zones | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**first_name** | **String** | The first name of the user | [optional] 
**last_name** | **String** | The last name of the user | [optional] 
**phone** | **String** | The phone number of the user | [optional] 
**mfa_enabled** | **BOOLEAN** | Specifies whether Multi Factor Authentication is enabled or not | [optional] 
**disable_daily_emails** | **BOOLEAN** | Specifies whether the daily emails should be turned off or not | [optional] 
**locked** | **BOOLEAN** | Specifies whether the user account is locked from accessing ESP | [optional] 
**locked_at** | **DateTime** | The time the user account was locked | [optional] 
**access_level** | **String** | The level of access this user has. Team access has access to items belonging only to that team. Sub Organization access has access to items belonging only to all teams under that sub organization. Organization access has access to all sub organizations and teams under that organization. Valid values are organization, sub_organization, team | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**sub_organizations** | [**Array&lt;SubOrganization&gt;**](SubOrganization.md) | Associated Sub Organizations | [optional] 
**sub_organization_ids** | **Array&lt;Integer&gt;** | Associated Sub Organizations IDs | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Teams IDs | [optional] 
**role** | [**Role**](Role.md) | Associated Role | [optional] 
**role_id** | **Integer** | Associated Role ID | [optional] 


