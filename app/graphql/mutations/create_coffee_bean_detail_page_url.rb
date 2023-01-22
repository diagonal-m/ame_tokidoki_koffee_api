module Mutations
  class CreateCoffeeBeanDetailPageUrl < BaseMutation
    graphql_name 'CreateCoffeeBeanDetailPageUrl'

    field :coffee_bean_detail_page_url, Types::CoffeeBeanDetailPageUrlType, null: true

    argument :url, String, required: true
    argument :store_id, Integer, required: true

    def resolve(url:, store_id:)
      detail_url = CoffeeBeanDetailPageUrl.register(url, store_id)
      {
        coffee_bean_detail_page_url: detail_url
      }
    end
  end
end
