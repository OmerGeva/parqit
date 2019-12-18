class AddTitleToParkingSpot < ActiveRecord::Migration[5.2]
  def change
    add_column :parking_spots, :title, :string
  end
end
