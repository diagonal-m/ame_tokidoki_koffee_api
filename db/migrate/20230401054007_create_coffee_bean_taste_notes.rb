class CreateCoffeeBeanTasteNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_bean_taste_notes do |t|
      t.references :coffee_bean, null: false, foreign_key: true
      t.references :taste_note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
