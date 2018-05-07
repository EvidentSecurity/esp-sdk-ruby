=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::SignaturesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignaturesApi' do
  before do
    # run before each test
    @instance = ESP::SignaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignaturesApi' do
    it 'should create an instact of SignaturesApi' do
      expect(@instance).to be_instance_of(ESP::SignaturesApi)
    end
  end

  # unit tests for list
  # Get a list of Signatures
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  service, suppressions See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attribute: [service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations, suppressions] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_disabled_external_accounts
  # Get a list of disabled External Accounts for a signature
  # 
  # @param signature_id The ID of the signature to get the list of disabled external accounts for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, sub_organization, team, scan_intervals, disabled_signatures, suppressions, azure_group, credentials See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, nickname, name] Matching Searchable Attributes: [nickname, name] Limited Searchable Attributes: [account_eq, arn_eq, provider_eq, subscription_id_eq] Sortable Attributes: [name, updated_at, created_at, id] Searchable Associations: [organization, sub_organization, team, compliance_standards, azure_group, disabled_signatures, suppressions] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list_disabled_external_accounts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_with_custom_risk_level_for_external_account
  # Get A list of Signatures with default and custom risk levels for an External Account
  # Return only signatures that have a custom risk level set by searching with &#x60;filter:{custom_risk_level_present: 1}&#x60;
  # @param external_account_id The ID of the external account to retrieve
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  service, suppressions See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution] Limited Searchable Attributes: [custom_risk_level_present, service_provider_eq] Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations, suppressions] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list_with_custom_risk_level_for_external_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_custom_risk_level_for_external_account
  # Remove a custom risk level to a Signature for an External Account
  # 
  # @param external_account_id The ID of the external account this signature custom risk level is for
  # @param signature_id The signature ID this signature custom risk level is for
  # @param [Hash] opts the optional parameters
  # @return [Meta]
  describe 'remove_custom_risk_level_for_external_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_custom_risk_level_for_external_account
  # Add a custom risk level to a Signature for an External Account
  # 
  # @param external_account_id The ID of the external account this signature custom risk level is for
  # @param risk_level The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high
  # @param signature_id The signature ID this signature custom risk level is for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  service, suppressions See Including Objects for more information.
  # @return [Signature]
  describe 'set_custom_risk_level_for_external_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Signature
  # 
  # @param id Signature ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  service, suppressions See Including Objects for more information.
  # @return [Signature]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_custom_risk_level_for_external_account
  # Update a Signature&#39;s custom risk level for an External Account
  # 
  # @param external_account_id The ID of the external account this signature custom risk level is for
  # @param signature_id The signature ID this signature custom risk level is for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  service, suppressions See Including Objects for more information.
  # @option opts [String] :risk_level The custom risk-level of the problem identified by the signature for this external_account. Valid values are low, medium, high
  # @return [Signature]
  describe 'update_custom_risk_level_for_external_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
