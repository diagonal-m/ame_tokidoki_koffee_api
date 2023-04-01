class CreateCoffeeBeanDetailPages < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_bean_detail_pages do |t|
      t.references :coffee_bean, null: false, foreign_key: true
      t.string :url, null: false, comment: '商品ページURL'
      t.string :s3_path, comment: 's3パス'

      t.timestamps
    end
  end
end
