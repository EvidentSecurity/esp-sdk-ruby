=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::AuditLogsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuditLogsApi' do
  before do
    # run before each test
    @instance = ESP::AuditLogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditLogsApi' do
    it 'should create an instance of AuditLogsApi' do
      expect(@instance).to be_instance_of(ESP::AuditLogsApi)
    end
  end

  # unit tests for list
  # Get a list of Audit Logs
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, user See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, item_id, item_type] Matching Searchable Attribute: [item_type]  Sortable Attribute: [id] Searchable Associations: [user, organization] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Audit Log
  # 
  # @param id Audit Log ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  organization, user See Including Objects for more information.
  # @return [AuditLog]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
