class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :monument
  has_many :reviews
end
