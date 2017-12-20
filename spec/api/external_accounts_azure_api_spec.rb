=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::ExternalAccountsAzureApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExternalAccountsAzureApi' do
  before do
    # run before each test
    @instance = ESP::ExternalAccountsAzureApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalAccountsAzureApi' do
    it 'should create an instact of ExternalAccountsAzureApi' do
      expect(@instance).to be_instance_of(ESP::ExternalAccountsAzureApi)
    end
  end

  # unit tests for create
  # Create an Azure External Account
  # The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.
  # @param subscription_id Azure subscription ID
  # @param client_id Azure client ID
  # @param tenant_id Azure tenant ID
  # @param app_key Azure app key
  # @param name Name
  # @param team_id The ID of the team the external account belongs to
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccountAzure]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_url
  # Reset Log URL for an Azure External Account
  # This endpoint invalidates the previous URL and generates a new one. The channel_url will only be returned in this response and will not be accessible again. The related external_account object will be returned with the response.
  # @param external_account_id The ID of the external account to reset an Azure log URL for
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccountAzure]
  describe 'reset_url test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show an Azure External Account
  # 
  # @param external_account_id The ID of the external account to show an Azure credential for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_account See Including Objects for more information.
  # @return [ExternalAccountAzure]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update an Azure External Account
  #  The related external_account object will be returned with the response.
  # @param external_account_id The ID of the external account to update an Azure credential for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscription_id Azure subscription ID
  # @option opts [String] :client_id Azure client ID
  # @option opts [String] :tenant_id Azure tenant ID
  # @option opts [String] :app_key Azure app key
  # @option opts [String] :name Name
  # @option opts [Integer] :team_id The ID of the team the external account belongs to
  # @return [ExternalAccountAzure]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end