class ChangeNameOfRecievedByColumnOnNotifications < ActiveRecord::Migration[5.2]
  def change
    rename_column :notifications, :recieved_by, :received_by
  end
end
