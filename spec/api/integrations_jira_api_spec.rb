=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::IntegrationsJiraApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IntegrationsJiraApi' do
  before do
    # run before each test
    @instance = ESP::IntegrationsJiraApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntegrationsJiraApi' do
    it 'should create an instact of IntegrationsJiraApi' do
      expect(@instance).to be_instance_of(ESP::IntegrationsJiraApi)
    end
  end

  # unit tests for create
  # Create a JIRA Integration
  # 
  # @param external_account_ids External accounts for integration
  # @param issue_type The Issue Type for ESP Alerts
  # @param name Name of the integration
  # @param password A password to access the JIRA project
  # @param project_key The designated Key for your Jira project
  # @param url The host and port portion of the Jira REST API URL
  # @param username A username to access the Jira project
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
  # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
  # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
  # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
  # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
  # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
  # @option opts [Array<Integer>] :signature_ids Signatures for integration
  # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  # @return [IntegrationJira]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Jira Integration
  # Password is not returned.
  # @param integration_id The ID of the integration
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
  # @return [IntegrationJira]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a JIRA Integration
  # 
  # @param integration_id The ID of the integration
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  integration See Including Objects for more information.
  # @option opts [BOOLEAN] :all_high_risk Send all high risk alerts
  # @option opts [BOOLEAN] :all_low_risk Send all low risk alerts
  # @option opts [BOOLEAN] :all_medium_risk Send all medium risk alerts
  # @option opts [Array<Integer>] :custom_signature_ids Custom signatures for integration
  # @option opts [Array<Integer>] :external_account_ids External accounts for integration
  # @option opts [String] :issue_type The Issue Type for ESP Alerts
  # @option opts [String] :name Name of the integration
  # @option opts [String] :password A password to access the JIRA project
  # @option opts [String] :project_key The designated Key for your Jira project
  # @option opts [BOOLEAN] :send_updates This feature enables the integration to send alerts when they are updated. When disabled, alerts will only be sent when they are initially created. When enabled, alerts will additionally be sent when a change is made such as the alert ending. An alert may end for multiple reasons.
  # @option opts [BOOLEAN] :send_when_suppressed Send notifications for suppressed alerts
  # @option opts [Array<Integer>] :signature_ids Signatures for integration
  # @option opts [Array<String>] :statuses Only send alerts that have the status in this list. Valid values are fail, warn, error, pass, info
  # @option opts [String] :url The host and port portion of the Jira REST API URL
  # @option opts [String] :username A username to access the Jira project
  # @return [IntegrationJira]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
