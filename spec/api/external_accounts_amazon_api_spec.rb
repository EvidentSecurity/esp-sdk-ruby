=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::ExternalAccountsAmazonApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExternalAccountsAmazonApi' do
  before do
    # run before each test
    @instance = ESP::ExternalAccountsAmazonApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalAccountsAmazonApi' do
    it 'should create an instact of ExternalAccountsAmazonApi' do
      expect(@instance).to be_instance_of(ESP::ExternalAccountsAmazonApi)
    end
  end

  # unit tests for create
  # Create an Amazon External Account
  #  The related external_account object will be returned with the response.
  # @param arn Amazon Resource Name for the IAM role
  # @param external_id External Identifier set on the role
  # @param name Name
  # @param team_id The ID of the team the external account belongs to
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccountAmazonIam]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show an Amazon External Account
  # 
  # @param external_account_id The ID of the external account to show an Amazon IAM credential for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_account See Including Objects for more information.
  # @return [ExternalAccountAmazonIam]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update an Amazon External Account
  #  The related external_account object will be returned with the response.
  # @param external_account_id The ID of the external account to update an Amazon IAM credential of
  # @param [Hash] opts the optional parameters
  # @option opts [String] :arn Amazon Resource Name for the IAM role
  # @option opts [String] :external_id External Identifier set on the role
  # @option opts [String] :name Name
  # @option opts [Integer] :team_id The ID of the team the external account belongs to
  # @return [ExternalAccountAmazonIam]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
