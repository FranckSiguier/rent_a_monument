class Monument < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates_presence_of :name, :description, :price_per_night
end
