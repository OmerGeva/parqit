class ParkingSpot < ApplicationRecord
  belongs_to :user
  has_many :bookings

  before_create :set_available

  private

  def set_available
    self.available = true
  end

end
