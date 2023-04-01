# == Schema Information
#
# Table name: new_releases
#
#  id               :bigint           not null, primary key
#  net(量)          :string(255)
#  price(価格)      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  coffee_bean_id   :bigint           not null
#
# Indexes
#
#  index_new_releases_on_coffee_bean_id  (coffee_bean_id)
#
# Foreign Keys
#
#  fk_rails_...  (coffee_bean_id => coffee_beans.id)
#
class NewRelease < ApplicationRecord
  belongs_to :coffee_bean
end
