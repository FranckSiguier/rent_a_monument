
class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :monument
  has_many :reviews, dependent: :destroy

  validates :duration, presence: true
end
