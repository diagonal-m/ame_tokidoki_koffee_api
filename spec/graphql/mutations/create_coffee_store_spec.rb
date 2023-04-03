require 'rails_helper'

RSpec.describe Mutations::CreateCoffeeStore, type: :request do
  describe '.resolve' do
    it 'コーヒー店作成' do
      post '/graphql', params: { query: query(name: 'Test Coffee Store', location: 'Test Location') }
      expect {
        post '/graphql', params: { query: query(name: 'Test Coffee Store', location: 'Test Location') }
      }.to change { CoffeeStore.count }.by(1)
    end

    it 'コーヒー店が作成される' do
      post '/graphql', params: { query: query(name: 'Test Coffee Store', location: 'Test Location') }
      json = JSON.parse(response.body)
      data = json['data']['createCoffeeStore']

      expect(data['coffeeStore']).to eq({
        'id' => CoffeeStore.last.id.to_s,
        'name' => 'Test Coffee Store',
        'location' => 'Test Location'
      })
    end
  end

  def query(name:, location:)
    <<~GQL
      mutation {
        createCoffeeStore(input: {
            name: "#{name}",
            location: "#{location}"
        }) {
          coffeeStore {
            id
            name
            location
          }
        }
      }
    GQL
  end
end