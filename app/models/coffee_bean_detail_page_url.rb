class CoffeeBeanDetailPageUrl < ApplicationRecord
  has_one :format_status
  
  belongs_to :formatting, optional: true
  belongs_to :coffee_store

  class << self
    def register(url, store_id)
      coffee_store = CoffeeStore.find(store_id)
      detail_url = coffee_store.coffee_bean_detail_page_urls.create!(
        url: url
      )
      detail_url.create_format_status!
      detail_url
    end
  end
end
