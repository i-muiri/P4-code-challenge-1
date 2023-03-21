class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :price
      
      #foreign key

      t.belongs_to :restaurant, null: false, foreign_key: true
      t.belongs_to :pizza4, null: false, foreign_key: true

      t.timestamps
    end
  end
end
