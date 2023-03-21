class CreatePizza4s < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza4s do |t|
      t.string :name
      t.string :ingredients

      t.timestamps
    end
  end
end
