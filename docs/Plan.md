# ESP::Plan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | The name of the plan | [optional] 
**amount** | **Integer** | Cost of the plan per interval | [optional] 
**max_external_accounts** | **Integer** | Number of external accounts allowed for this plan. | [optional] 
**max_users** | **Integer** | Number of users allowed for this plan. | [optional] 
**max_custom_signatures** | **Integer** | Number of Custom Signatures allowed for this plan. | [optional] 
**plan_type** | **String** | Kind of plan. Valid values are appliance, enterprise, free, stripe | [optional] 
**grandfathered** | **BOOLEAN** | Changes to the plan are prohibited if grandfathered is true. | [optional] 


