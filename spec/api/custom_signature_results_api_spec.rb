=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::CustomSignatureResultsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomSignatureResultsApi' do
  before do
    # run before each test
    @instance = ESP::CustomSignatureResultsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomSignatureResultsApi' do
    it 'should create an instance of CustomSignatureResultsApi' do
      expect(@instance).to be_instance_of(ESP::CustomSignatureResultsApi)
    end
  end

  # unit tests for create
  # Create a(n) Custom Signature Result
  # 
  # @param code The code for this definition
  # @param custom_signature_definition_id ID of the custom signature definition this result belongs to
  # @param external_account_id ID of the external account the code should run for
  # @param language The language of the definition. Valid values are ruby, javascript
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_account, region, definition See Including Objects for more information.
  # @option opts [String] :region Code of the region the result code should run for. Ex: us-east-1. This can be sent instead of region_id
  # @option opts [Integer] :region_id ID of the region the code should run for.  Required if region is not supplied.
  # @return [CustomSignatureResult]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Custom Signature Results
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_account, region, definition See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, language, status]   Sortable Attribute: [id] Searchable Associations: [definition, region, external_account] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_alerts
  # Returns the Alerts for a given Custom Signature Result
  # This format is slightly different than the standard alert format. A successful call to this API returns a list of alerts for the custom signature result identified by the custom_signature_result_id parameter.
  # @param custom_signature_result_id Custom Signature Result ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_account, region, custom_signature See Including Objects for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list_alerts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Custom Signature Result
  # 
  # @param id Custom Signature Result ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_account, region, definition See Including Objects for more information.
  # @return [CustomSignatureResult]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
