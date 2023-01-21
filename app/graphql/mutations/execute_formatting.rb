module Mutations
  class ExecuteFormatting < BaseMutation
    graphql_name 'ExecuteFormatting'

    field :result, Boolean, null: false

    def resolve
      Formatting.run
      {
        result: true
      }
    end
  end
end
