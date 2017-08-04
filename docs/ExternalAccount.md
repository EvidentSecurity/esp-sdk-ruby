# ESP::ExternalAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
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
**scan_intervals** | [**Array&lt;ScanInterval&gt;**](ScanInterval.md) | Associated Scan Intervals | [optional] 
**scan_interval_ids** | **Array&lt;Integer&gt;** | Associated Scan Intervals Ids | [optional] 
**disabled_signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Disabled Signatures | [optional] 
**disabled_signature_ids** | **Array&lt;Integer&gt;** | Associated Disabled Signatures Ids | [optional] 
**credentials** | [**ExternalAccountAmazonIAM**](ExternalAccountAmazonIAM.md) | Associated Credentials | [optional] 
**credentials_id** | **Integer** | Associated Credentials Id | [optional] 
**errors** | **Array&lt;String&gt;** | Array of error messages if the request failed | [optional] 


