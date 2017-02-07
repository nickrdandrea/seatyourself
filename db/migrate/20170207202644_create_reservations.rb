class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :time
      t.integer :seats
      t.string :request

      t.timestamps
    end
  end
end
