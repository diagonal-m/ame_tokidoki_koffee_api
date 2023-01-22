module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :coffee_stores, [CoffeeStoreType], null: true
    def coffee_stores
      CoffeeStore.all
    end

    field :manual_input_target, CoffeeBeanDetailPageUrlType, null: true
    def manual_input_target
      manual_input_status = FormatStatus.manual_input.first
      manual_input_status.coffee_bean_detail_page_url
    end

  end
end
