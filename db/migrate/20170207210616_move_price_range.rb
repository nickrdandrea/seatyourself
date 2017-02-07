class MovePriceRange < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :price
    add_column :restaurants, :price_range, :integer
  end
end
