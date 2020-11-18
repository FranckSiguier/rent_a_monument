class AddDateOfDepartureToBookingsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :date_of_departure, :date
  end
end
