class Notification < ApplicationRecord
  belongs_to :account

  has_one :user, through: :booking
end
