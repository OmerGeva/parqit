class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :parking_spot

  attr_accessor :duration

  validates :start_time, presence: true
  validates :date, presence: true
end
