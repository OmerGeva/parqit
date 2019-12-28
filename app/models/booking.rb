class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :parking_spot

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :date, presence: true
end
