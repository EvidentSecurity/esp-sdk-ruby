# ESP::IntegrationsJiraApi

All URIs are relative to https://api.evident.io

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](IntegrationsJiraApi.md#create) | **POST** /api/v2/integrations/jira.json_api | Create a JIRA Integration
[**show**](IntegrationsJiraApi.md#show) | **GET** /api/v2/integrations/{integration_id}/jira.json_api | Show a single Jira Integration
[**update**](IntegrationsJiraApi.md#update) | **PATCH** /api/v2/integrations/{integration_id}/jira.json_api | Update a JIRA Integration


# **create**
> IntegrationJira create(external_account_ids, issue_type, name, password, project_key, url, username, opts)

Create a JIRA Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsJiraApi.new

external_account_ids = [56] # Array<Integer> | External accounts for integration

issue_type = "issue_type_example" # String | The Issue Type for ESP Alerts

name = "name_example" # String | Name of the integration

password = "password_example" # String | A password to access the JIRA project

project_key = "project_key_example" # String | The designated Key for your Jira project

url = "url_example" # String | The host and port portion of the Jira REST API URL

username = "username_example" # String | A username to access the Jira project

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
  #Create a JIRA Integration
  result = api_instance.create(external_account_ids, issue_type, name, password, project_key, url, username, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsJiraApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_account_ids** | [**Array&lt;Integer&gt;**](Integer.md)| External accounts for integration | 
 **issue_type** | **String**| The Issue Type for ESP Alerts | 
 **name** | **String**| Name of the integration | 
 **password** | **String**| A password to access the JIRA project | 
 **project_key** | **String**| The designated Key for your Jira project | 
 **url** | **String**| The host and port portion of the Jira REST API URL | 
 **username** | **String**| A username to access the Jira project | 
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

[**IntegrationJira**](IntegrationJira.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **show**
> IntegrationJira show(integration_id, opts)

Show a single Jira Integration

Password is not returned.

### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsJiraApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example" # String | Related objects that can be included in the response:  integration See Including Objects for more information.
}

begin
  #Show a single Jira Integration
  result = api_instance.show(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsJiraApi->show: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_id** | **Integer**| The ID of the integration | 
 **include** | **String**| Related objects that can be included in the response:  integration See Including Objects for more information. | [optional] 

### Return type

[**IntegrationJira**](IntegrationJira.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



# **update**
> IntegrationJira update(integration_id, opts)

Update a JIRA Integration



### Example
```ruby
# load the gem
require 'esp_sdk'

api_instance = ESP::IntegrationsJiraApi.new

integration_id = 56 # Integer | The ID of the integration

opts = { 
  include: "include_example", # String | Related objects that can be included in the response:  integration See Including Objects for more information.
  all_high_risk: true, # BOOLEAN | Send all high risk alerts
  all_low_risk: true, # BOOLEAN | Send all low risk alerts
  all_medium_risk: true, # BOOLEAN | Send all medium risk alerts
  custom_signature_ids: [56], # Array<Integer> | Custom signatures for integration
  external_account_ids: [56], # Array<Integer> | External accounts for integration
  issue_type: "issue_type_example", # String | The Issue Type for ESP Alerts
  name: "name_example", # String | Name of the integration
  password: "password_example", # String | A password to access the JIRA project
  project_key: "project_key_example", # String | The designated Key for your Jira project
  send_updates: true, # BOOLEAN | This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  send_when_suppressed: true, # BOOLEAN | Send notifications for suppressed alerts
  signature_ids: [56], # Array<Integer> | Signatures for integration
  statuses: ["statuses_example"], # Array<String> | Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  url: "url_example", # String | The host and port portion of the Jira REST API URL
  username: "username_example" # String | A username to access the Jira project
}

begin
  #Update a JIRA Integration
  result = api_instance.update(integration_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling IntegrationsJiraApi->update: #{e}"
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
 **issue_type** | **String**| The Issue Type for ESP Alerts | [optional] 
 **name** | **String**| Name of the integration | [optional] 
 **password** | **String**| A password to access the JIRA project | [optional] 
 **project_key** | **String**| The designated Key for your Jira project | [optional] 
 **send_updates** | **BOOLEAN**| This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons. | [optional] 
 **send_when_suppressed** | **BOOLEAN**| Send notifications for suppressed alerts | [optional] 
 **signature_ids** | [**Array&lt;Integer&gt;**](Integer.md)| Signatures for integration | [optional] 
 **statuses** | [**Array&lt;String&gt;**](String.md)| Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info | [optional] 
 **url** | **String**| The host and port portion of the Jira REST API URL | [optional] 
 **username** | **String**| A username to access the Jira project | [optional] 

### Return type

[**IntegrationJira**](IntegrationJira.md)

### Authorization

See https://github.com/EvidentSecurity/esp-sdk-ruby#set-your-hmac-security-keys

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json



