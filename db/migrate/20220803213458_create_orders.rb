class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :price
      t.integer :quantity
    end
  end
end
