require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

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

    it 'should set the Authorization headers' do
      api_client = ESP::ApiClient.new

      allow(ESP::ApiAuthentication).to receive(:sign_request)
      stub_request(:put, %r{organizations})

      ESP::OrganizationsApi.new(api_client).list

      expect(ESP::ApiAuthentication).to have_received(:sign_request)
    end

    it 'should raise an ESP::ApiError if response is not success or 422' do
      stub_request(:get, %r{alerts/1.json*}).to_return(headers: {}, body: active_record_error_response, status: [401, 'nope'])

      expect { ESP::AlertsApi.new.show(1) }.to raise_error(ESP::ApiError) do |error|
        expect(error.code).to eq(401)
        expect(error.message).to eq("Failed.  Response code = 401.  Response message = Name can't be blank Name is invalid Description can't be blank")
      end
    end

    it 'should raise an ESP::ApiError if response is 422 and errors are not set in the body' do
      stub_request(:post, %r{teams.json*}).to_return(headers: {}, status: [422, 'nope'])

      expect { ESP::TeamsApi.new.create(1, "") }.to raise_error(ESP::ApiError) do |error|
        expect(error.code).to eq(422)
        expect(error.message).to eq("Failed.  Response code = 422.  Response message = NA")
      end
    end

    it 'should set errors attribute if response is 422 and errors are set in the body' do
      stub_request(:post, %r{teams.json*}).to_return(headers: {}, body: active_record_error_response, status: [422, 'nope'])

      team = ESP::TeamsApi.new.create(1, "")
      expect(team.errors).to include("Name can't be blank")
    end

    it 'should set original_params, api_client and path on PaginatedCollection' do
      json = json_list([alert_response])
      stub_request(:put, %r{reports/1/alerts.json*}).to_return(headers: {}, body: json)

      api = ESP::AlertsApi.new
      alert = api.list(1, filter: { name: 'Evid' })

      expect(alert.api_client).to eq(api.api_client)
      expect(alert.original_params).to include(form_params: { 'filter' => { name: 'Evid' } })
      expect(alert.path).to eq('/v2/reports/1/alerts.json')
    end
  end
end
