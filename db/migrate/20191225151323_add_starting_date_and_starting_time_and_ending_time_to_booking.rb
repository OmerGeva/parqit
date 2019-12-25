class AddStartingDateAndStartingTimeAndEndingTimeToBooking < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :start_time, :time
    change_column :bookings, :end_time, :time

    add_column :bookings, :date, :date
  end
end
