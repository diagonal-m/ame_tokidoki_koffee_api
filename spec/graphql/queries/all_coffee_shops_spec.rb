require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  describe '.all_coffee_stores' do
    let!(:coffee_stores) { create_list(:coffee_store, 3) }

    it 'コーヒー店が取得される' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['allCoffeeStores']

      expect(data.size).to eq(3)
      data.each_with_index do |coffee_store, index|
        expect(coffee_store).to include(
          'id' => coffee_stores[index].id.to_s,
          'name' => coffee_stores[index].name,
          'location' => coffee_stores[index].location
        )
      end
    end
  end

  def query
    <<~GQL
      query {
        allCoffeeStores {
          id
          name
          location
        }
      }
    GQL
  end
end
