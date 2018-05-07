# ESP::IntegrationsAmazonSNSApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](IntegrationsAmazonSNSApi.md#create) | **POST** /api/v2/integrations/amazon_sns.json_api | Create an Amazon SNS Integration
[**show**](IntegrationsAmazonSNSApi.md#show) | **GET** /api/v2/integrations/{integration_id}/amazon_sns.json_api | Show a single Amazon SNS Integration
[**update**](IntegrationsAmazonSNSApi.md#update) | **PATCH** /api/v2/integrations/{integration_id}/amazon_sns.json_api | Update an Amazon SNS Integration


# **create**
> IntegrationAmazonSns create(arn, external_account_ids, external_id, name, topic, opts)

Create an Amazon SNS Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsAmazonSNSApi.new

arn = "arn_example" # String | The role arn for accessing the SNS topic

external_account_ids = [56] # Array<Integer> | External accounts for integration

external_id = "external_id_example" # String | The external ID for the IAM role

name = "name_example" # String | Name of the integration

topic = "topic_example" # String | The SNS topic arn

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  region, integration See Including Objects for more information.
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
  #Create an Amazon SNS Integration
  result = api_instance.create(arn, external_account_ids, external_id, name, topic, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsAmazonSNSApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **arn** | **String**| The role arn for accessing the SNS topic | 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | 
 **external_id** | **String**| The external ID for the IAM role | 
 **name** | **String**| Name of the integration | 
 **topic** | **String**| The SNS topic arn | 
 **include** | **String**| Related objects that can be included in the response:  region, integration See Including Objects for more information. | [optional] 
 **all_high_risk** | **BOOLEAN**| Send all high risk alerts | [optional] 
 **all_low_risk** | **BOOLEAN**| Send all low risk alerts | [optional] 
 **all_medium_risk** | **BOOLEAN**| Send all medium risk alerts | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Custom signatures for integration | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 

### Return type

[**IntegrationAmazonSns**](IntegrationAmazonSns.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> IntegrationAmazonSns show(integration_id, opts)

Show a single Amazon SNS Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsAmazonSNSApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  region, integration See Including Objects for more information.
}

begin
  #Show a single Amazon SNS Integration
  result = api_instance.show(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsAmazonSNSApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **include** | **String**| Related objects that can be included in the response:  region, integration See Including Objects for more information. | [optional] 

### Return type

[**IntegrationAmazonSns**](IntegrationAmazonSns.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> IntegrationAmazonSns update(integration_id, opts)

Update an Amazon SNS Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsAmazonSNSApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  region, integration See Including Objects for more information.
  all_high_risk: true, # BOOLEAN | Send all high risk alerts
  all_low_risk: true, # BOOLEAN | Send all low risk alerts
  all_medium_risk: true, # BOOLEAN | Send all medium risk alerts
  arn: "arn_example", # String | The role arn for accessing the SNS topic
  custom_signature_ids: [56], # Array<Integer> | Custom signatures for integration
  external_account_ids: [56], # Array<Integer> | External accounts for integration
  external_id: "external_id_example", # String | The external ID for the IAM role
  name: "name_example", # String | Name of the integration
  send_updates: true, # BOOLEAN | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  send_when_suppressed: true, # BOOLEAN | Send notifications for suppressed alerts
  signature_ids: [56], # Array<Integer> | Signatures for integration
  statuses: ["statuses_example"], # Array<String> | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  topic: "topic_example" # String | The SNS topic arn
}

begin
  #Update an Amazon SNS Integration
  result = api_instance.update(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsAmazonSNSApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **include** | **String**| Related objects that can be included in the response:  region, integration See Including Objects for more information. | [optional] 
 **all_high_risk** | **BOOLEAN**| Send all high risk alerts | [optional] 
 **all_low_risk** | **BOOLEAN**| Send all low risk alerts | [optional] 
 **all_medium_risk** | **BOOLEAN**| Send all medium risk alerts | [optional] 
 **arn** | **String**| The role arn for accessing the SNS topic | [optional] 
 **custom_signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Custom signatures for integration | [optional] 
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | [optional] 
 **external_id** | **String**| The external ID for the IAM role | [optional] 
 **name** | **String**| Name of the integration | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 
 **topic** | **String**| The SNS topic arn | [optional] 

### Return type

[**IntegrationAmazonSns**](IntegrationAmazonSns.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



