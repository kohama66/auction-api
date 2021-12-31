class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.datetime :event_date, null: false
      t.timestamps
    end
  end
end
