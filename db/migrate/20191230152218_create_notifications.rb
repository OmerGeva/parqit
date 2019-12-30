class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :account, foreign_key: true
      t.references :booking, foreign_key: true
      t.boolean :seen, default: false

      t.timestamps
    end
  end
end
