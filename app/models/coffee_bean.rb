# == Schema Information
#
# Table name: coffee_beans
#
#  id                   :bigint           not null, primary key
#  altitude(標高)       :string(255)
#  country(国名)        :string(255)
#  name(コーヒー名)     :string(255)      not null
#  plantation(農園名)   :string(255)
#  processing(プロセス) :string(255)
#  roasted(焙煎度)      :integer
#  variety(品種)        :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  coffee_store_id      :bigint           not null
#
# Indexes
#
#  index_coffee_beans_on_coffee_store_id  (coffee_store_id)
#
# Foreign Keys
#
#  fk_rails_...  (coffee_store_id => coffee_stores.id)
#
class CoffeeBean < ApplicationRecord
  belongs_to :coffee_shop
end
