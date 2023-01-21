class CreateFormatStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :format_statuses do |t|
      t.integer :status, null: false, default: 0
      t.references :coffee_bean_detail_page_url, null: false, foreign_key: true

      t.timestamps
    end
  end
end
