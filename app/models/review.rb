class Review < ApplicationRecord
  belongs_to :user
  belongs_to :parking_spot

  validates :rating, presence: true
  validates :title, presence: true
  validates :content, presence: true

end
