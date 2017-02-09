class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :phone, presence: true
  validates :username, :email :uniqueness true

  has_many :reservations
  has_many :restaurants, through: :reservations
  has_many :owned_restaurants, class_name: "Restaurant"
end
