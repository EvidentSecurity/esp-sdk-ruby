=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ESP::PaginatedCollection
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaginatedCollection' do
  before do
    # run before each test
    @instance = ESP::PaginatedCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaginatedCollection' do
    it 'should create an instance of PaginatedCollection' do
      expect(@instance).to be_instance_of(ESP::PaginatedCollection)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "included"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "links"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

