class Monument < ApplicationRecord
  belongs_to :user
  has_many_attached :photo
  has_many :bookings
end
