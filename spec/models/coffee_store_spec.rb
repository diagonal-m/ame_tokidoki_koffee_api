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
require 'rails_helper'

RSpec.describe CoffeeStore, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
