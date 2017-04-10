# ESP::ExternalAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationships** | **Object** | Links to Associated Objects | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 
**id** | **Integer** | Unique Id | [optional] 
**account** | **String** | The name of the account created | [optional] 
**arn** | **String** | Amazon Resource Name for the IAM role | [optional] 
**created_at** | **DateTime** | Created At | [optional] 
**external_id** | **String** | External Identifier set on the role | [optional] 
**name** | **String** | Name | [optional] 
**updated_at** | **DateTime** | Updated At | [optional] 
**cloudtrail_name** | **String** | Cloudtrail Name | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization Id | [optional] 
**sub_organization** | [**SubOrganization**](SubOrganization.md) | Associated Sub Organization | [optional] 
**sub_organization_id** | **Integer** | Associated Sub Organization Id | [optional] 
**team** | [**Team**](Team.md) | Associated Team | [optional] 
**team_id** | **Integer** | Associated Team Id | [optional] 


