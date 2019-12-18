class RemoveDurationAddStartEndTimeToBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :duration

    add_column :bookings, :start_time, :datetime
    add_column :bookings, :end_time, :datetime
  end
end
