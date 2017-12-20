# ESP::IntegrationsWebhookApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](IntegrationsWebhookApi.md#create) | **POST** /api/v2/integrations/webhook.json_api | Create a Webhook Integration
[**show**](IntegrationsWebhookApi.md#show) | **GET** /api/v2/integrations/{integration_id}/webhook.json_api | Show a single Webhook Integration
[**update**](IntegrationsWebhookApi.md#update) | **PATCH** /api/v2/integrations/{integration_id}/webhook.json_api | Update a Webhook Integration


# **create**
> IntegrationWebhook create(url, throttle_rate, name, external_account_ids, opts)

Create a Webhook Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsWebhookApi.new

url = "url_example" # String | The URL endpoint for the webhook

throttle_rate = 56 # Integer | The maximum number of alerts that may be sent through the integration every minute.

name = "name_example" # String | Name of the integration

external_account_ids = [56] # Array<Integer> | External accounts for integration

opts = { 
  all_high_risk: true, # BOOLEAN | Send all high risk alerts
  all_medium_risk: true, # BOOLEAN | Send all medium risk alerts
  all_low_risk: true, # BOOLEAN | Send all low risk alerts
  send_updates: true, # BOOLEAN | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  send_when_suppressed: true, # BOOLEAN | Send notifications for suppressed alerts
  signature_ids: [56], # Array<Integer> | Signatures for integration
  statuses: ["statuses_example"], # Array<String> | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  custom_signature_ids: [56], # Array<Integer> | Custom signatures for integration
  include: "include_example" # String | Related objects that can be included in the response:  integration See Including Objects for more information.
}

begin
  #Create a Webhook Integration
  result = api_instance.create(url, throttle_rate, name, external_account_ids, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsWebhookApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| The URL endpoint for the webhook | 
 **throttle_rate** | **Integer**| The maximum number of alerts that may be sent through the integration every minute. | 
 **name** | **String**| Name of the integration | 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | 
 **all_high_risk** | **BOOLEAN**| Send all high risk alerts | [optional] 
 **all_medium_risk** | **BOOLEAN**| Send all medium risk alerts | [optional] 
 **all_low_risk** | **BOOLEAN**| Send all low risk alerts | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Custom signatures for integration | [optional] 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 

### Return type

[**IntegrationWebhook**](IntegrationWebhook.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> IntegrationWebhook show(integration_id, opts)

Show a single Webhook Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsWebhookApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  integration See Including Objects for more information.
}

begin
  #Show a single Webhook Integration
  result = api_instance.show(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsWebhookApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 

### Return type

[**IntegrationWebhook**](IntegrationWebhook.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> IntegrationWebhook update(integration_id, opts)

Update a Webhook Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsWebhookApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  url: "url_example", # String | The URL endpoint for the webhook
  throttle_rate: 56, # Integer | The maximum number of alerts that may be sent through the integration every minute.
  name: "name_example", # String | Name of the integration
  all_high_risk: true, # BOOLEAN | Send all high risk alerts
  all_medium_risk: true, # BOOLEAN | Send all medium risk alerts
  all_low_risk: true, # BOOLEAN | Send all low risk alerts
  send_updates: true, # BOOLEAN | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  send_when_suppressed: true, # BOOLEAN | Send notifications for suppressed alerts
  signature_ids: [56], # Array<Integer> | Signatures for integration
  statuses: ["statuses_example"], # Array<String> | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  external_account_ids: [56], # Array<Integer> | External accounts for integration
  custom_signature_ids: [56], # Array<Integer> | Custom signatures for integration
  include: "include_example" # String | Related objects that can be included in the response:  integration See Including Objects for more information.
}

begin
  #Update a Webhook Integration
  result = api_instance.update(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsWebhookApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **url** | **String**| The URL endpoint for the webhook | [optional] 
 **throttle_rate** | **Integer**| The maximum number of alerts that may be sent through the integration every minute. | [optional] 
 **name** | **String**| Name of the integration | [optional] 
 **all_high_risk** | **BOOLEAN**| Send all high risk alerts | [optional] 
 **all_medium_risk** | **BOOLEAN**| Send all medium risk alerts | [optional] 
 **all_low_risk** | **BOOLEAN**| Send all low risk alerts | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Custom signatures for integration | [optional] 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 

### Return type

[**IntegrationWebhook**](IntegrationWebhook.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



