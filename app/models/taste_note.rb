# == Schema Information
#
# Table name: taste_notes
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TasteNote < ApplicationRecord
  has_many :coffee_bean_taste_notes
  has_many :coffee_beans, through: :coffee_bean_taste_notes

  validates :name, presence: true
end
