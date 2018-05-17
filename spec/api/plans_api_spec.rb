=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::PlansApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PlansApi' do
  before do
    # run before each test
    @instance = ESP::PlansApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlansApi' do
    it 'should create an instance of PlansApi' do
      expect(@instance).to be_instance_of(ESP::PlansApi)
    end
  end

  # unit tests for list
  # Get a list of Plans
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Plan
  # 
  # @param id Plan ID
  # @param [Hash] opts the optional parameters
  # @return [Plan]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
