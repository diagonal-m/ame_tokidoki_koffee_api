module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject

    def authenticated_user
      context[:current_user] || (raise GraphQL::ExecutionError.new("ログインが必要です"))
    end
  end
end
