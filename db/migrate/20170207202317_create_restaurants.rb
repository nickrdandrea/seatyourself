class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :image
      t.string :description
      t.string :phone
      t.string :website
      t.integer :capacity
      t.string :menu

      t.timestamps
    end
  end
end
