# ESP::IntegrationsHipchatApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](IntegrationsHipchatApi.md#create) | **POST** /api/v2/integrations/hipchat.json_api | Create a Hipchat Integration
[**show**](IntegrationsHipchatApi.md#show) | **GET** /api/v2/integrations/{integration_id}/hipchat.json_api | Show a single Hipchat Integration
[**update**](IntegrationsHipchatApi.md#update) | **PATCH** /api/v2/integrations/{integration_id}/hipchat.json_api | Update a Hipchat Integration


# **create**
> IntegrationHipchat create(external_account_ids, name, room, token, opts)

Create a Hipchat Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsHipchatApi.new

external_account_ids = [56] # Array<Integer> | External accounts for integration

name = "name_example" # String | Name of the integration

room = "room_example" # String | The Hipchat room

token = "token_example" # String | The Hipchat token

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  integration See Including Objects for more information.
  all_high_risk: true, # BOOLEAN | Send all high risk alerts
  all_low_risk: true, # BOOLEAN | Send all low risk alerts
  all_medium_risk: true, # BOOLEAN | Send all medium risk alerts
  custom_signature_ids: [56], # Array<Integer> | Custom signatures for integration
  send_updates: true, # BOOLEAN | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  send_when_suppressed: true, # BOOLEAN | Send notifications for suppressed alerts
  signature_ids: [56], # Array<Integer> | Signatures for integration
  statuses: ["statuses_example"] # Array<String> | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
}

begin
  #Create a Hipchat Integration
  result = api_instance.create(external_account_ids, name, room, token, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsHipchatApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | 
 **name** | **String**| Name of the integration | 
 **room** | **String**| The Hipchat room | 
 **token** | **String**| The Hipchat token | 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 
 **all_high_risk** | **BOOLEAN**| Send all high risk alerts | [optional] 
 **all_low_risk** | **BOOLEAN**| Send all low risk alerts | [optional] 
 **all_medium_risk** | **BOOLEAN**| Send all medium risk alerts | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Custom signatures for integration | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 

### Return type

[**IntegrationHipchat**](IntegrationHipchat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> IntegrationHipchat show(integration_id, opts)

Show a single Hipchat Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsHipchatApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  integration See Including Objects for more information.
}

begin
  #Show a single Hipchat Integration
  result = api_instance.show(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsHipchatApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 

### Return type

[**IntegrationHipchat**](IntegrationHipchat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> IntegrationHipchat update(integration_id, opts)

Update a Hipchat Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsHipchatApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  integration See Including Objects for more information.
  all_high_risk: true, # BOOLEAN | Send all high risk alerts
  all_low_risk: true, # BOOLEAN | Send all low risk alerts
  all_medium_risk: true, # BOOLEAN | Send all medium risk alerts
  custom_signature_ids: [56], # Array<Integer> | Custom signatures for integration
  external_account_ids: [56], # Array<Integer> | External accounts for integration
  name: "name_example", # String | Name of the integration
  room: "room_example", # String | The Hipchat room
  send_updates: true, # BOOLEAN | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  send_when_suppressed: true, # BOOLEAN | Send notifications for suppressed alerts
  signature_ids: [56], # Array<Integer> | Signatures for integration
  statuses: ["statuses_example"], # Array<String> | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  token: "token_example" # String | The Hipchat token
}

begin
  #Update a Hipchat Integration
  result = api_instance.update(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsHipchatApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 
 **all_high_risk** | **BOOLEAN**| Send all high risk alerts | [optional] 
 **all_low_risk** | **BOOLEAN**| Send all low risk alerts | [optional] 
 **all_medium_risk** | **BOOLEAN**| Send all medium risk alerts | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Custom signatures for integration | [optional] 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | [optional] 
 **name** | **String**| Name of the integration | [optional] 
 **room** | **String**| The Hipchat room | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 
 **token** | **String**| The Hipchat token | [optional] 

### Return type

[**IntegrationHipchat**](IntegrationHipchat.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



