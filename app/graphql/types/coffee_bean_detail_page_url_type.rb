# frozen_string_literal: true

module Types
  class CoffeeBeanDetailPageUrlType < Types::BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :coffee_store_id, Integer, null: false
    field :formatting_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
