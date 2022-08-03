class CreateLiquors < ActiveRecord::Migration[6.1]
  def change
    create_table :liquors do |t|
      t.integer :price
      t.string :name
      t.string :brand
      t.integer :restaurant_id
      t.integer :menu_id
      t.integer :order_id
    end
  end
end
