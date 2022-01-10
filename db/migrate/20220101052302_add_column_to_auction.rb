class AddColumnToAuction < ActiveRecord::Migration[6.1]
  def change
    add_column :auctions, :count, :integer, null: false
  end
end
