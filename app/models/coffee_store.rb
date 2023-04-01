# == Schema Information
#
# Table name: coffee_stores
#
#  id                                    :bigint           not null, primary key
#  location(住所)                        :string(255)
#  name(店名)                            :string(255)      not null
#  online_store_url(オンラインストアURL) :string(255)
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#
class CoffeeStore < ApplicationRecord
  has_many :coffee_beans

  validates :name, presence: true
end
