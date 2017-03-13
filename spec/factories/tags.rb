FactoryGirl.define do
  factory :tag, class: 'ESP::Tag' do
    skip_create

    sequence(:id) { |n| n }
    type "services"
    key "Name"
    value "abc123"
    created_at { Time.now }
    updated_at { Time.now }
  end
end
