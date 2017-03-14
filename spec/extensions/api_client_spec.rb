require 'spec_helper'

describe ESP::ApiClient do
  describe "#deserialize" do
    it "should handle PaginatedCollection" do
      api_client = ESP::ApiClient.new
      headers    = { 'Content-Type' => 'application/vnd.api+json' }
      response   = double('response', headers: headers, body: json_list([organization_response]))

      data = api_client.deserialize(response, 'PaginatedCollection')

      expect(data).to be_instance_of(ESP::PaginatedCollection)
      expect(data.first).to be_instance_of(ESP::Organization)
    end

    it "should handle ESP objects" do
      api_client = ESP::ApiClient.new
      headers    = { 'Content-Type' => 'application/vnd.api+json' }
      response   = double('response', headers: headers, body: alert_response)

      data = api_client.deserialize(response, 'Alert')

      expect(data).to be_instance_of(ESP::Alert)
    end
  end

  describe '#call_api' do
    it 'should put filter params in the body' do
      api_client = ESP::ApiClient.new

      allow(api_client).to receive(:build_request).and_return(Typhoeus::Request.new('/v2/organizations.json', method: 'put'))
      stub_request(:put, %r{organizations})

      ESP::OrganizationsApi.new(api_client).list(filter: { name_cont: 'Evid' })

      expect(api_client).to have_received(:build_request).with(:PUT, "/v2/organizations.json", hash_including(:body => { 'filter' => { name_cont: 'Evid' } }))
    end

    it 'should put page params in the body' do
      api_client = ESP::ApiClient.new

      allow(api_client).to receive(:build_request).and_return(Typhoeus::Request.new('/v2/organizations.json', method: 'put'))
      stub_request(:put, %r{organizations})

      ESP::OrganizationsApi.new(api_client).list(page: { number: 3 })

      expect(api_client).to have_received(:build_request).with(:PUT, "/v2/organizations.json", hash_including(:body => { 'page' => { number: 3 } }))
    end

    it 'should put form params in json api format' do
      api_client = ESP::ApiClient.new

      allow(api_client).to receive(:build_request).and_return(Typhoeus::Request.new('/v2/organizations.json', method: 'put'))
      stub_request(:put, %r{organizations})

      ESP::OrganizationsApi.new(api_client).create('Evident')

      expect(api_client).to have_received(:build_request).with(:POST, "/v2/organizations.json", hash_including(:body => { data: { attributes: { 'name' => 'Evident' } } }))
    end

    it 'should raise an ESP::ApiError if there is no body' do
      stub_request(:get, %r{alerts/1.json*}).to_return(headers: {}, status: [401, 'nope'])

      expect { ESP::AlertsApi.new.show(1) }.to raise_error(ESP::ApiError) { |error| expect(error.code).to eq(401) }
    end

    it 'should set original_params and path on PaginatedCollection' do
      json = json_list([alert_response])
      stub_request(:put, %r{reports/1/alerts.json*}).to_return(headers: {}, body: json)

      alert = ESP::AlertsApi.new.list(1, filter: { name: 'Evid' })

      expect(alert.original_params).to include(form_params: { 'filter' => { name: 'Evid' } })
      expect(alert.path).to eq('/v2/reports/1/alerts.json')
    end
  end
end
