class Monument < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates_presence_of :name, :description, :price_per_night
  validates :name, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average
    sum = 0
    length = self.bookings.empty? ? 1 : 0
    self.bookings.each do |booking|
      booking.reviews.each do |review|
        sum += review.rating
        length += 1
      end
    end
    (sum / length.to_f).round(2)
  end
end
