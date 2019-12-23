class AddPriceToParkingSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :parking_spots, :price, :float
  end
end
