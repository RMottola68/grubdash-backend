class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :cuisine
      t.integer :restaurant_id
      t.integer :order_id
    end
  end
end
