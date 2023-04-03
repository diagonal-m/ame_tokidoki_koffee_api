FactoryBot.define do
  factory :coffee_store do
    name { "Test Coffee Store" }
    location { "Test Location" }
    online_store_url { "https://example.com" }
  end
end