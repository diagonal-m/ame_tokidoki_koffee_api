class CreateFormattings < ActiveRecord::Migration[6.0]
  def change
    create_table :formattings do |t|

      t.timestamps
    end
  end
end
