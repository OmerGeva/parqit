class Garage < ApplicationRecord
  belongs_to :user
  has_many :parking_spots
end
