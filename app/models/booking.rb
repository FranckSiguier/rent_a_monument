require 'date'

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :monument
  has_many :reviews, dependent: :destroy

  validates :duration, presence: true

  def date_of_departure
    self.date_of_arrival += duration
  end
end
