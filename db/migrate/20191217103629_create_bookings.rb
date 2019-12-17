class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.float :duration
      t.references :user, foreign_key: true
      t.references :parking_spot, foreign_key: true

      t.timestamps
    end
  end
end
