class Reservation < ApplicationRecord
  validates :date, :time, presence: true
  #validates :date, :time, not_in_past:true
  validates :seats, numericality: {only_integer: true}


  belongs_to :restaurant
  belongs_to :user
end
