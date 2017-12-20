=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::SuppressionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SuppressionsApi' do
  before do
    # run before each test
    @instance = ESP::SuppressionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SuppressionsApi' do
    it 'should create an instact of SuppressionsApi' do
      expect(@instance).to be_instance_of(ESP::SuppressionsApi)
    end
  end

  # unit tests for deactivate
  # Deactivate a suppression
  # 
  # @param id Suppression ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'deactivate test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Suppressions
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, status, suppression_type, resource, reason] Matching Searchable Attributes: [resource, reason] Limited Searchable Attributes: [signature_name_cont, signature_identifier_cont] Sortable Attributes: [suppression_type, updated_at, created_at, id, status] Searchable Associations: [regions, created_by, signatures, custom_signatures, unique_identifier_signature, unique_identifier_custom_signature] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Suppression
  # 
  # @param id Suppression ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suppress_region
  # Creates a region suppression
  # A successful call to this API creates a new region suppression for the supplied regions. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
  # @param regions An array of region names to suppress
  # @param external_account_ids An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on
  # @param reason The reason for creating the suppression
  # @param [Hash] opts the optional parameters
  # @option opts [String] :resource The resource string this suppression will suppress alerts for
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'suppress_region test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suppress_region_from_alert
  # Creates a region suppression from an alert
  # A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/regions.
  # @param alert_id The ID for the alert you want to create a suppression for
  # @param reason The reason for creating the suppression
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'suppress_region_from_alert test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suppress_signature
  # Creates a signature suppression
  # A successful call to this API creates a new signature suppression for the supplied signature_ids or custom_signature_ids. The body of the request must contain a json API compliant hash of attributes with type suppression/signatures.
  # @param regions An array of region names to suppress
  # @param external_account_ids An Array of the external accounts identified by external_account_id to suppress the signature or custom signature on
  # @param reason The reason for creating the suppression
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :signature_ids An array of signatures identified by signature_id to suppress. Required if custom_signature_ids is blank.
  # @option opts [Array<Integer>] :custom_signature_ids An array of custom signatures identified by custom_signature_id to suppress. Required if signature_ids is blank.
  # @option opts [String] :resource The resource string this suppression will suppress alerts for
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'suppress_signature test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suppress_signature_from_alert
  # Creates a signature suppression from an alert
  # A successful call to this API creates a new signature suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/signatures.
  # @param alert_id The ID for the alert you want to create a suppression for
  # @param reason The reason for creating the suppression
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'suppress_signature_from_alert test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for suppress_unique_identifier_from_alert
  # Creates a unique identifier suppression from an alert
  # A successful call to this API creates a new unique identifier suppression based on the supplied alert_id. The body of the request must contain a json api compliant hash of attributes with type suppression/unique_identifier.
  # @param alert_id The ID for the alert you want to create a suppression for
  # @param reason The reason for creating the suppression
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, created_by, regions, external_accounts, signatures, custom_signatures See Including Objects for more information.
  # @return [Suppression]
  describe 'suppress_unique_identifier_from_alert test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
