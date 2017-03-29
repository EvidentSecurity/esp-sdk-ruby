require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ESP::PaginatedCollection do
  context "with ESP::OrganizationsApi" do
    context '#parse_pagination_links' do
      it 'should not set the previous page or next page or last page when there is only 1 page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response], page: { number: 1, size: 20 }))

        orgs = ESP::OrganizationsApi.new.list

        expect(orgs.current_page_number).to eq('1')
        expect(orgs.next_page_number).to be_nil
        expect(orgs.previous_page_number).to be_nil
        expect(orgs.last_page_number).to be_nil
        expect(orgs).not_to be_next_page
        expect(orgs).not_to be_previous_page
        expect(orgs).to be_last_page
      end

      it 'should not set the previous page when on the first page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response], page: { number: 1, size: 1 }))

        orgs = ESP::OrganizationsApi.new.list

        expect(orgs.current_page_number).to eq('1')
        expect(orgs.next_page_number).to eq('2')
        expect(orgs.previous_page_number).to be_nil
        expect(orgs.last_page_number).to eq('2')
        expect(orgs).to be_next_page
        expect(orgs).to_not be_previous_page
        expect(orgs).to_not be_last_page
      end

      it 'should not set the next or last page page when on the last page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response], page: { number: 2, size: 1 }))

        orgs = ESP::OrganizationsApi.new.list

        expect(orgs.current_page_number).to eq('2')
        expect(orgs.next_page_number).to be_nil
        expect(orgs.previous_page_number).to eq('1')
        expect(orgs.last_page_number).to be_nil
        expect(orgs).to_not be_next_page
        expect(orgs).to be_previous_page
        expect(orgs).to be_last_page
      end

      it 'should set the next, last and previous page page when not on the first or last page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 }))

        orgs = ESP::OrganizationsApi.new.list

        expect(orgs.current_page_number).to eq('2')
        expect(orgs.next_page_number).to eq('3')
        expect(orgs.previous_page_number).to eq('1')
        expect(orgs.last_page_number).to eq('3')
        expect(orgs).to be_next_page
        expect(orgs).to be_previous_page
        expect(orgs).to_not be_last_page
      end

      it 'should set page size on each link' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 }))

        orgs = ESP::OrganizationsApi.new.list

        expect(orgs.next_page_params['page']['size']).to eq('1')
        expect(orgs.previous_page_params['page']['size']).to eq('1')
        expect(orgs.last_page_params['page']['size']).to eq('1')
      end

      it 'should not set page size on previous link if on the last page' do
        # The last page may not contain the full per page number of records, and will therefore come back with an incorrect size since the
        # size is based on the collection size.  This will mess up further calls to previous_page or first page so remove the size so it will bring back the default size.
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 2 }))

        orgs = ESP::OrganizationsApi.new.list

        expect(orgs.previous_page_params['page'].key?('size')).to eq(false)
      end
    end

    context '#first_page' do
      it 'should call the api with the original url and params and the page number 1 param' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list(filter: { name_eq: 'name' })

        page = orgs.first_page

        expect(page.current_page_number).to eq('1')
        expect(orgs.current_page_number).to eq('2') # original object is unchanged
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          body = JSON.parse(req.body)
          unless body["page"].nil? # The first call will not have a body["page"], only the second call
            expect(body["page"]["number"]).to eq(1)
            expect(body["filter"]["name_eq"]).to eq('name')
          end
        }
      end

      it 'should not call the api and return self if already on the first page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        page = orgs.first_page

        expect(page.current_page_number).to eq('1')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          expect(req.uri.query).to be_nil # It will only be called once to get the first page
        }
      end

      it 'should not error if no initial params were supplied' do
        stub_request(:get, /organizations.json*/).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 2 }))
        stub_request(:put, /organizations.json*/).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 2 }))
        orgs = ESP::OrganizationsApi.new.list
        orgs.next_page
      end
    end

    context '#first_page!' do
      it 'should call the api with the original url and the page number 1 param and update itself' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        orgs.first_page!

        expect(orgs.current_page_number).to eq('1')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          unless req.body.nil? # The first call will not have a body, only the second call
            body = JSON.parse(req.body)
            expect(body["page"]["number"]).to eq(1)
          end
        }
      end
    end

    context '#previous_page' do
      it 'should call the api with the original url and original params and the previous page number param' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list(filter: { name_eq: 'name' })

        page = orgs.previous_page

        expect(page.current_page_number).to eq('1')
        expect(orgs.current_page_number).to eq('2') # original object is unchanged
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          body = JSON.parse(req.body)
          unless body["page"].nil? # The first call will not have a body["page"], only the second call
            expect(body["page"]["number"]).to eq('1')
            expect(body["page"]["size"]).to eq('1')
            expect(body["filter"]["name_eq"]).to eq('name')
          end
        }
      end

      it 'should not call the api and return self if already on the first page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        page = orgs.previous_page

        expect(page.current_page_number).to eq('1')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          expect(req.uri.query).to be_nil # It will only be called once to get the first page
        }
      end
    end

    context '#previous_page!' do
      it 'should call the api with the original url and the previous page number param and update itself' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 1, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        orgs.previous_page!

        expect(orgs.current_page_number).to eq('1')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          unless req.body.nil? # The first call will not have a body, only the second call
            body = JSON.parse(req.body)
            expect(body["page"]["number"]).to eq('1')
            expect(body["page"]["size"]).to eq('1')
          end
        }
      end
    end

    context '#next_page' do
      it 'should call the api with the original url and original params and the next page number param' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list(filter: { name_eq: 'name' })

        page = orgs.next_page

        expect(page.current_page_number).to eq('3')
        expect(orgs.current_page_number).to eq('2') # original object is unchanged
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          body = JSON.parse(req.body)
          unless body["page"].nil? # The first call will not have a body["page"], only the second call
            expect(body["page"]["number"]).to eq('3')
            expect(body["page"]["size"]).to eq('1')
            expect(body["filter"]["name_eq"]).to eq('name')
          end
        }
      end

      it 'should not call the api and return self if already on the last page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        page = orgs.next_page

        expect(page.current_page_number).to eq('3')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          expect(req.uri.query).to be_nil # It will only be called once to get the first page
        }
      end
    end

    context '#next_page!' do
      it 'should call the api with the original url and the next page number param and update itself' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        orgs.next_page!

        expect(orgs.current_page_number).to eq('3')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          unless req.body.nil? # The first call will not have a body, only the second call
            body = JSON.parse(req.body)
            expect(body["page"]["number"]).to eq('3')
            expect(body["page"]["size"]).to eq('1')
          end
        }
      end
    end

    context '#last_page' do
      it 'should call the api with the original url and original params and the last page number param' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list(filter: { name_eq: 'name' })

        page = orgs.last_page

        expect(page.current_page_number).to eq('3')
        expect(orgs.current_page_number).to eq('2') # original object is unchanged
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          body = JSON.parse(req.body)
          unless body["page"].nil? # The first call will not have a body["page"], only the second call
            expect(body["page"]["number"]).to eq('3')
            expect(body["page"]["size"]).to eq('1')
            expect(body["filter"]["name_eq"]).to eq('name')
          end
        }
      end

      it 'should not call the api and return self if already on the last page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        page = orgs.last_page

        expect(page.current_page_number).to eq('3')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          expect(req.uri.query).to be_nil # It will only be called once to get the first page
        }
      end
    end

    context '#last_page!' do
      it 'should call the api with the original url and the last page number param and update itself' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        orgs.last_page!

        expect(orgs.current_page_number).to eq('3')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          unless req.body.nil? # The first call will not have a body, only the second call
            body = JSON.parse(req.body)
            expect(body["page"]["number"]).to eq('3')
            expect(body["page"]["size"]).to eq('1')
          end
        }
      end
    end

    context '#page' do
      it 'should raise an error if the page number is not given' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        expect { orgs.page }.to raise_error(ArgumentError, 'You must supply a page number.')
      end

      it 'should raise an error if the page number is not a positive number' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        expect { orgs.page(0) }.to raise_error(ArgumentError, 'Page number cannot be less than 1.')
      end

      it 'should raise an error if the page number is greater than the last page number' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        expect { orgs.page(4) }.to raise_error(ArgumentError, 'Page number cannot be greater than the last page number.')
      end

      it 'should call the api with the original url and original params and the page number param' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list(filter: { name_eq: 'name' })

        page = orgs.page(3)

        expect(page.current_page_number).to eq('3')
        expect(orgs.current_page_number).to eq('2') # original object is unchanged
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          body = JSON.parse(req.body)
          unless body['page'].nil? # The first call will not have a body["page"], only the second call
            expect(body["page"]["number"]).to eq(3)
            expect(body["page"]["size"]).to eq('1')
            expect(body["filter"]["name_eq"]).to eq('name')
          end
        }
      end

      it 'should not call the api and return self if already on that page' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        page = orgs.page(2)

        expect(page.current_page_number).to eq('2')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          expect(req.uri.query).to be_nil # It will only be called once to get the first page
        }
      end
    end

    context '#page!' do
      it 'should call the api with the original url and the page number 1 param and update itself' do
        stub_request(:put, %r{organizations.json*}).to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 2, size: 1 })).then.to_return(headers: {}, body: json_list([organization_response, organization_response, organization_response], page: { number: 3, size: 1 }))
        orgs = ESP::OrganizationsApi.new.list

        orgs.page!(3)

        expect(orgs.current_page_number).to eq('3')
        expect(WebMock).to have_requested(:put, %r{organizations.json*}).with { |req|
          unless req.body.nil? # The first call will not have a body, only the second call
            body = JSON.parse(req.body)
            expect(body["page"]["number"].to_s).to eq('3')
            expect(body["page"]["size"].to_s).to eq('1')
          end
        }
      end
    end
  end
end
