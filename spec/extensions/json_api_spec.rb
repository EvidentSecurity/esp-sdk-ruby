require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ESP::JsonApi do
  context '# decode' do
    context 'with ESP::Alert' do
      it 'should merge nested included objects' do
        json        = alert_response
        parsed_json = JSON.parse(json)
        stub_request(:get, %r{alerts/1.json*}).to_return(headers: {}, body: json)

        alert = ESP::AlertsApi.new.show(1, include: 'external_account.team.organization,region,signature,cloud_trail_events')

        expect(parsed_json['included'].detect {|e| e['type'] == 'external_accounts'}['id']).to eq(alert.external_account.id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'organizations'}['id']).to eq(alert.external_account.organization.id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'teams'}['id']).to eq(alert.external_account.team.id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'organizations'}['id']).to eq(alert.external_account.team.organization.id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'regions'}['id']).to eq(alert.region.id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'signatures'}['id']).to eq(alert.signature.id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'cloud_trail_events'}['id']).to eq(alert.cloud_trail_events.first.id.to_s)
      end

      it 'should assign foreign keys' do
        json        = json_list([alert_response])
        parsed_json = JSON.parse(json)
        stub_request(:put, %r{reports/1/alerts.json*}).to_return(headers: {}, body: json)

        alert = ESP::AlertsApi.new.list_for_report(1).first

        expect(parsed_json['included'].detect {|e| e['type'] == 'external_accounts'}['id']).to eq(alert.external_account_id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'regions'}['id']).to eq(alert.region_id.to_s)
        expect(parsed_json['included'].detect {|e| e['type'] == 'signatures'}['id']).to eq(alert.signature_id.to_s)
        expect(alert.tag_ids).to include(parsed_json['included'].detect {|e| e['type'] == 'tags'}['id'].to_i)
        expect(alert.cloud_trail_event_ids).to include(parsed_json['included'].detect {|e| e['type'] == 'cloud_trail_events'}['id'].to_i)

        # nested objects too
        expect(parsed_json['included'].detect {|e| e['type'] == 'external_accounts'}['relationships']['organization']['data']['id']).to eq(alert.external_account.organization_id.to_s)
      end

      it 'should not error with included nulls' do
        manufactured_hash = JSON.parse(json_list([alert_response]))
        manufactured_hash['included'] << nil
        stub_request(:put, %r{reports/1/alerts.json*}).to_return(headers: {}, body: manufactured_hash.to_json)

        alert = ESP::AlertsApi.new.list_for_report(1).first

        expect(alert.external_account_id).not_to be_nil
        expect(alert.region_id).not_to be_nil
        expect(alert.signature_id).not_to be_nil
        expect(alert.tag_ids).not_to be_nil
        expect(alert.cloud_trail_event_ids).not_to be_nil
        expect(alert.external_account.organization_id).not_to be_nil
      end
    end
  end
end
