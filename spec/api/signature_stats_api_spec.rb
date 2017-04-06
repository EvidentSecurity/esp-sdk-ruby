=begin
#ESP Documentation

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::SignatureStatsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignatureStatsApi' do
  before do
    # run before each test
    @instance = ESP::SignatureStatsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignatureStatsApi' do
    it 'should create an instact of SignatureStatsApi' do
      expect(@instance).to be_instance_of(ESP::SignatureStatsApi)
    end
  end

  # unit tests for list
  # A successful call to this API returns all the stats of all the signatures for a report identified by the stat_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all signatures for the selected hour.
  # 
  # @param stat_id The ID of the stat to retrieve service stats for
  # @param [Hash] opts the optional parameters
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
