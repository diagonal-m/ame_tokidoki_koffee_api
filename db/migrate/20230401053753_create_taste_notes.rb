class CreateTasteNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :taste_notes do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
