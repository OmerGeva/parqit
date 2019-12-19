class ParkingSpot < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  before_create :set_available
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def set_available
    self.available = true
  end

end
