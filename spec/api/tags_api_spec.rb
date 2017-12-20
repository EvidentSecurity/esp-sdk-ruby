=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::TagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @instance = ESP::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instact of TagsApi' do
      expect(@instance).to be_instance_of(ESP::TagsApi)
    end
  end

  # unit tests for list_for_alert
  # Get a list of Tags
  # 
  # @param alert_id The ID of the alert to list tags for
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
  # @option opts [String] :include Related objects that can be included in the response:   See Including Objects for more information.
  # @return [PaginatedCollection]
  describe 'list_for_alert test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Tag
  # 
  # @param id Tag ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:   See Including Objects for more information.
  # @return [Tag]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
