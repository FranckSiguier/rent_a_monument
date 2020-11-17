class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :monuments, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :first_name, :last_name, :email, :password, presence: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
end
