# ESP::ExternalAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**name** | **String** | Name | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**provider** | **String** | The cloud provider this account is for | [optional] 
**arn** | **String** | Amazon Resource Name for the IAM role | [optional] 
**account** | **String** | The AWS account | [optional] 
**external_id** | **String** | External Identifier set on the role | [optional] 
**cloudtrail_name** | **String** | Cloudtrail Name | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**sub_organization** | [**SubOrganization**](SubOrganization.md) | Associated Sub Organization | [optional] 
**sub_organization_id** | **Integer** | Associated Sub Organization ID | [optional] 
**team** | [**Team**](Team.md) | Associated Team | [optional] 
**team_id** | **Integer** | Associated Team ID | [optional] 
**scan_intervals** | [**Array&lt;ScanInterval&gt;**](ScanInterval.md) | Associated Scan Intervals | [optional] 
**scan_interval_ids** | **Array&lt;Integer&gt;** | Associated Scan Intervals IDs | [optional] 
**disabled_signatures** | [**Array&lt;Signature&gt;**](Signature.md) | Associated Disabled Signatures | [optional] 
**disabled_signature_ids** | **Array&lt;Integer&gt;** | Associated Disabled Signatures IDs | [optional] 
**credentials** | [**ExternalAccountAmazonIAM**](ExternalAccountAmazonIAM.md) | Associated Credentials | [optional] 
**credentials_id** | **Integer** | Associated Credentials ID | [optional] 


