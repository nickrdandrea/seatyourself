class Restaurant < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :category
  has_many :reservations
  has_many :users, through: :reservations
end
