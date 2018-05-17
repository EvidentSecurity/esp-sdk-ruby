=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::StatCustomSignaturesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatCustomSignaturesApi' do
  before do
    # run before each test
    @instance = ESP::StatCustomSignaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatCustomSignaturesApi' do
    it 'should create an instance of StatCustomSignaturesApi' do
      expect(@instance).to be_instance_of(ESP::StatCustomSignaturesApi)
    end
  end

  # unit tests for list_for_stat
  # Statistics for custom signatures
  # A successful call to this API returns all the statistics of all the custom signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all custom_signatures for the selected hour.
  # @param stat_id The ID of the stat to retrieve custom signature statistics for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  custom_signature, stat See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [stat_id, type_id]    
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list_for_stat test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Stat Custom Signature
  # 
  # @param id Stat Custom Signature ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  custom_signature, stat See Including Objects for more information.
  # @return [StatCustomSignature]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
