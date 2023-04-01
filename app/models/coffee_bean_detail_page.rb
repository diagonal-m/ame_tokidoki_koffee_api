# == Schema Information
#
# Table name: coffee_bean_detail_pages
#
#  id                 :bigint           not null, primary key
#  s3_path(s3パス)    :string(255)
#  url(商品ページURL) :string(255)      not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  coffee_bean_id     :bigint           not null
#
# Indexes
#
#  index_coffee_bean_detail_pages_on_coffee_bean_id  (coffee_bean_id)
#
# Foreign Keys
#
#  fk_rails_...  (coffee_bean_id => coffee_beans.id)
#
class CoffeeBeanDetailPage < ApplicationRecord
  belongs_to :coffee_bean

  validates :url, presence: true
end
