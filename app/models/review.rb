class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :title, :content, :rating, presence: true
end
