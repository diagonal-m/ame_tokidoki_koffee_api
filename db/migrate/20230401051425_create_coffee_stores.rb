class CreateCoffeeStores < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_stores do |t|
      t.string :name, null: false, comment: '店名'
      t.string :location, comment: '住所'
      t.string :online_store_url, comment: 'オンラインストアURL'

      t.timestamps
    end
  end
end
