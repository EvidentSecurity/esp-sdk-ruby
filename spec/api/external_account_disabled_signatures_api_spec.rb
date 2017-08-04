=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::ExternalAccountDisabledSignaturesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExternalAccountDisabledSignaturesApi' do
  before do
    # run before each test
    @instance = ESP::ExternalAccountDisabledSignaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalAccountDisabledSignaturesApi' do
    it 'should create an instact of ExternalAccountDisabledSignaturesApi' do
      expect(@instance).to be_instance_of(ESP::ExternalAccountDisabledSignaturesApi)
    end
  end

  # unit tests for create
  # A successful call to this API will disable a signature for an external account.
  # 
  # @param external_account_id The ID of the external account to disable a signature on.
  # @param signature_id The ID of the signature to disable
  # @param [Hash] opts the optional parameters
  # @return [SuccessObject]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy
  # A successful call to this API will remove a signature from the disabled signature list on an external account.
  # 
  # @param external_account_id The ID of the external account to enable the signature on.
  # @param signature_id The ID of the signature to enable
  # @param [Hash] opts the optional parameters
  # @return [SuccessObject]
  describe 'destroy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # A successful call to this API returns all the disabled signatures of the associated external account, identified by the external_account_id parameter.
  # 
  # @param external_account_id The ID of the external account to retrieve the disabled signatures for.
  # @param [Hash] opts the optional parameters
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, risk_level, service_id, disabled, supports_user_attribution, name, identifier, description, resolution] Matching Searchable Attributes: [name, identifier, description, resolution]  Sortable Attributes: [name, identifier, updated_at, created_at, id] Searchable Associations: [signature_copy, disabled_external_accounts, integrations] See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Searching on Relationships for more information. See Searching Lists for more information. Example: filter: {name_eq: &#39;Bob&#39;}
  # @option opts [String] :include Objects that can be included in the response:  service,disabled_external_accounts  See Including Objects for more information.
  # @option opts [Hash<String, String>] :page Page Number and Page Size.  Example: page: {number: 1, size: 20}
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # A successful call to this API will update the disabled signatures on an external account.
  # 
  # @param external_account_id The ID of the external account to update the disabled signatures of.
  # @param disabled_signature_ids An array of all the signatures to disable on the external account.
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccount]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end