class ParkingSpot < ApplicationRecord

  include PgSearch::Model
  belongs_to :user
  has_many :bookings
  has_many :reviews

  validates :price, presence: true
  before_create :set_available
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  private

  def set_available
    self.available = true
  end

end
