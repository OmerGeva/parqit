class RemoveBookingFromNotification < ActiveRecord::Migration[5.2]
  def change
    remove_reference :notifications, :booking, foreign_key: true
  end
end
