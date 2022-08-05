class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.integer :price
      t.string :name
      t.string :rating
      t.integer :restaurant_id
      t.integer :menu_id
      t.string :description
      t.integer :order_id
      t.string :image_url
    end
  end
end
