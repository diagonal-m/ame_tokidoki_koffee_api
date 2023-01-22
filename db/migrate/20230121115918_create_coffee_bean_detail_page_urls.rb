class CreateCoffeeBeanDetailPageUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_bean_detail_page_urls do |t|
      t.string :url, null: false, comment: '詳細ページURL'
      t.references :coffee_store, null: false, foreign_key: true
      t.references :formatting, foreign_key: true

      t.timestamps
    end
  end
end
