class CreateCoffeeStores < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_stores do |t|
      t.string :store_name, null: false, comment: '店名'
      t.string :station, comment: '最寄駅'
      t.string :beans_page_url, comment: 'オンラインストアURL'

      t.timestamps
    end
  end
end
