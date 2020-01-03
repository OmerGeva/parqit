class AddSentByAndRecievedByToNotification < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :sent_by, :integer
    add_column :notifications, :recieved_by, :integer
  end
end
