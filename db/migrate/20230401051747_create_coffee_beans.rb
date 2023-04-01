class CreateCoffeeBeans < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_beans do |t|
      t.references :coffee_store, null: false, foreign_key: true
      t.string :name, null: false, comment: 'コーヒー名'
      t.string :country, comment: '国名'
      t.string :plantation, comment: '農園名'
      t.string :variety, comment: '品種'
      t.integer :roasted, comment: '焙煎度'
      t.string :processing, comment: 'プロセス'
      t.string :altitude, comment: '標高'

      t.timestamps
    end
  end
end
