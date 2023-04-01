class CreateNewReleases < ActiveRecord::Migration[6.1]
  def change
    create_table :new_releases do |t|
      t.references :coffee_bean, null: false, foreign_key: true
      t.integer :price, comment: '価格'
      t.string :net, comment: '量'

      t.timestamps
    end
  end
end
