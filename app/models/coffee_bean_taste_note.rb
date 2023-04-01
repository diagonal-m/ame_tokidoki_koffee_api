# == Schema Information
#
# Table name: coffee_bean_taste_notes
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  coffee_bean_id :bigint           not null
#  taste_note_id  :bigint           not null
#
# Indexes
#
#  index_coffee_bean_taste_notes_on_coffee_bean_id  (coffee_bean_id)
#  index_coffee_bean_taste_notes_on_taste_note_id   (taste_note_id)
#
# Foreign Keys
#
#  fk_rails_...  (coffee_bean_id => coffee_beans.id)
#  fk_rails_...  (taste_note_id => taste_notes.id)
#
class CoffeeBeanTasteNote < ApplicationRecord
  belongs_to :coffee_bean
  belongs_to :taste_note
end
