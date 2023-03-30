class User < ApplicationRecord

  has_many :bookings, dependent: :destroy
  has_many :listings, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many_attached :cvs
  has_many_attached :photos

  # has_many :booking_requests, through: :listings, source: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
