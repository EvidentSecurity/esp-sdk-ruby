=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ESP::ScheduledExportsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ScheduledExportsApi' do
  before do
    # run before each test
    @instance = ESP::ScheduledExportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ScheduledExportsApi' do
    it 'should create an instance of ScheduledExportsApi' do
      expect(@instance).to be_instance_of(ESP::ScheduledExportsApi)
    end
  end

  # unit tests for activate_export
  # Update a(n) Scheduled Export
  # 
  # @param scheduled_export_id The id of the scheduled export to be activated
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @return [ScheduledExport]
  describe 'activate_export test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create a(n) Scheduled Export
  # 
  # @param external_account_ids The ids of the external accounts the report will be exported for
  # @param frequency Frequency of the export. Valid values are weekly, daily, monthly
  # @param hour Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  # @param time_zone Time zone to use when calculating hour and day
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @option opts [String] :day Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
  # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
  # @option opts [String] :name A name that describes the export
  # @option opts [Array<String>] :recipients Email addresses the export will be sent to
  # @return [ScheduledExport]
  describe 'create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Delete a(n) Scheduled Export
  # 
  # @param id Scheduled Export ID
  # @param [Hash] opts the optional parameters
  # @return [Meta]
  describe 'delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_export
  # Update a(n) Scheduled Export
  # 
  # @param scheduled_export_id The id of the scheduled export to be disabled
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @return [ScheduledExport]
  describe 'disable_export test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get a list of Scheduled Exports
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @option opts [Hash<String, String>] :filter Filter Params for Searching.  Equality Searchable Attributes: [id, hour, day, status, recipients, time_zone, name] Matching Searchable Attributes: [recipients, time_zone, name] Limited Searchable Attribute: [frequency_eq] Sortable Attributes: [updated_at, created_at, id, name] Searchable Associations: [creator, external_accounts] See Searching Lists for more information. See the filter parameter of the association&#39;s list action to see what attributes are searchable on each association. See Conditions on Relationships in Searching Lists for more information.
  # @option opts [String] :page Page Number and Page Size.  Number is the page number of the collection to return, size is the number of items to return per page.
  # @return [PaginatedCollection]
  describe 'list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show
  # Show a single Scheduled Export
  # 
  # @param id Scheduled Export ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @return [ScheduledExport]
  describe 'show test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_file_details
  # Show a single Scheduled Export Result
  # The URL provided is temporary and will expire shortly after the request. To download the exported file you will need to follow the URL provided.
  # @param uuid The uuid to access the result
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  scheduled_export See Including Objects for more information.
  # @return [ScheduledExportResult]
  describe 'show_file_details test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unsubscribe_export
  # Update a(n) Scheduled Export
  # 
  # @param uuid The uuid of the export to unsubscribe
  # @param email The email to unsubscribe. Nested under: \&quot;data\&quot;: { \&quot;meta\&quot;: { \&quot;email\&quot;: ... } }
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @return [ScheduledExport]
  describe 'unsubscribe_export test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update a(n) Scheduled Export
  # 
  # @param id Scheduled Export ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Related objects that can be included in the response:  external_accounts, creator See Including Objects for more information.
  # @option opts [String] :day Day of the week or day of the month to perform the export.  Allowed Values: Daily: nil - Weekly: sunday, monday, tuesday, wednesday, thursday, friday, or saturday - Monthly: 1 to 31. Valid values are sunday, monday, tuesday, wednesday, thursday, friday, saturday, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
  # @option opts [Array<Integer>] :external_account_ids The ids of the external accounts the report will be exported for
  # @option opts [Hash<String, String>] :filter Params used to filter the alerts that will be exported
  # @option opts [Integer] :hour Hour of the day to perform the export. Valid values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  # @option opts [String] :name A name that describes the export
  # @option opts [Array<String>] :recipients Email addresses the export will be sent to
  # @option opts [String] :time_zone Time zone to use when calculating hour and day
  # @return [ScheduledExport]
  describe 'update test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end