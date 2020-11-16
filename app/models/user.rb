class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :bookings
  has_many :monuments
  has_many :reviews

end
