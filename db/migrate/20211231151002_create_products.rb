class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :min_price, null: false, default: 0
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
