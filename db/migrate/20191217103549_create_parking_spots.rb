class CreateParkingSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_spots do |t|
      t.string :description
      t.references :user, foreign_key: true
      t.boolean :available

      t.timestamps
    end
  end
end
