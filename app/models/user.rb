class User < ApplicationRecord

  before_create :set_picture
  after_create :make_account, :capitalize_name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :bookings
  has_many :parking_spots
  has_one :account
  has_many :notifications, through: :parking_spots, through: :bookings

  mount_uploader :photo, PhotoUploader
  private

  def set_picture
    self.remote_photo_url = 'https://i.kym-cdn.com/photos/images/newsfeed/001/452/271/0f9'
  end

  def capitalize_name
    self.update(full_name: (self.full_name.split(' ').map { |name| name.capitalize }).join(' '))
  end

  def make_account
    Account.create(user: self)
  end
end
