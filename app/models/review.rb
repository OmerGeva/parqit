class Review < ApplicationRecord
  belongs_to :user
  belongs_to :parking_spot
end
