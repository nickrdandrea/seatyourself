class Restaurant < ApplicationRecord

  validates :description, :address, :phone, :website, :menu, :image, presence: true
  validates :capacity, numericality: {only_integer: true}
  validates :name, uniqueness: true

  belongs_to :owner, class_name: "User"
  belongs_to :category
  has_many :reservations
  has_many :users, through: :reservations


end
