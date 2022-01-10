class AddColumnToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :auction, null: false, foreign_key: true
  end
end
