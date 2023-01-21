class CoffeeBeanDetailPageUrl < ApplicationRecord
  has_one :format_status
  
  belongs_to :formatting, optional: true
  belongs_to :coffee_store
end
