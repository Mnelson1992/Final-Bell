class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.integer :position_id
      t.integer :user_id
      t.integer :quantity
      t.integer :price
      t.string :ticker

      t.timestamps
    end
  end
end
