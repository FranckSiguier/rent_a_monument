class Monument < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates_presence_of :name, :description, :price_per_night
  validates :name, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def booked?(arrival, departure)
    arr = []
    self.bookings.each do |booking|
      arr << booking.date_of_arrival.between?(arrival, departure)
      arr << booking.date_of_departure.between?(arrival, departure)
    end
    arr.include?(true)
  end
end
