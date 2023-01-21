module Mutations
  class CreateCoffeeStore < BaseMutation
    graphql_name 'CreateCoffeeStore'

    field :coffee_store, Types::CoffeeStoreType, null: false

    argument :store_name, String, required: true
    argument :station, String, required: false
    argument :beans_page_url, String, required: false

    def resolve(store_name:, station:, beans_page_url:)
      coffee_store = CoffeeStore.create!(
        store_name: store_name,
        station: station,
        beans_page_url: beans_page_url
      )

      {
        coffee_store: coffee_store
      }
    end
  end
end
