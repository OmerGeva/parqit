class Review < ApplicationRecord
  belongs_to :user
  belongs_to :parking_spot

  validates :rating, presence: true
end
