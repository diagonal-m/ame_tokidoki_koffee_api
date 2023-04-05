module Mutations
  class CreateCoffeeStore < BaseMutation
    argument :name, String, required: true
    argument :location, String, required: false
    argument :online_store_url, String, required: false

    field :coffee_store, Types::CoffeeStoreType, null: true
    field :errors, [String], null: false

    def resolve(name:, location: nil, online_store_url: nil)
      authenticated_user
      coffee_store = CoffeeStore.new(name: name, location: location, online_store_url: online_store_url)
      if coffee_store.save
        {
          coffee_store: coffee_store,
          errors: []
        }
      else
        raise GraphQL::ExecutionError.new(coffee_store.errors.full_messages.join(', '))
      end
    end
  end
end
