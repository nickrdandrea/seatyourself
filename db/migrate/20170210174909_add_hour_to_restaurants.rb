class AddHourToRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.time :opening_hour
      t.time :closing_hour
    end
  end
end
