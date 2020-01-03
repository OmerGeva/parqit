class AddBookingNumberToNotification < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :booking_number, :integer
  end
end
