FactoryGirl.define do
  factory :contact_request, class: 'ESP::ContactRequest' do
    skip_create

    sequence(:id) { |n| n }
    type "contact_requests"
    title "Test title"
    request_type "bug"
    description "Test description"
    created_at { Time.now }
    updated_at { Time.now }
    relationships do
      { user: {
        links: {
          related: "http://test.host/api/v2/users/1001.json"
        }
      } }
    end
  end
end
