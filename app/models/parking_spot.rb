class ParkingSpot < ApplicationRecord
  belongs_to :garage
  has_many :bookings
end
