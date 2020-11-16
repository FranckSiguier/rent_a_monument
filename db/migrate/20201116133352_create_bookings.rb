class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date_of_arrival
      t.integer :duration
      t.references :user, null: false, foreign_key: true
      t.references :monument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
