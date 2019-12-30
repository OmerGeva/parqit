class Notification < ApplicationRecord
  belongs_to :account
  belongs_to :booking

  has_one :user, through: :booking
end
