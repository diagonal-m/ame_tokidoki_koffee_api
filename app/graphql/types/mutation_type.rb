module Types
  class MutationType < Types::BaseObject
    field :execute_formatting, mutation: Mutations::ExecuteFormatting
    field :create_coffee_bean_detail_page_url, mutation: Mutations::CreateCoffeeBeanDetailPageUrl
    field :create_coffee_store, mutation: Mutations::CreateCoffeeStore
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
