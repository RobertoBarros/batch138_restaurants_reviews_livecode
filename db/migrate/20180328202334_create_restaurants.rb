class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :picture
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
