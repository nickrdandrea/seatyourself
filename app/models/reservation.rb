class Reservation < ApplicationRecord
  validates :date, presence: true
  validates :time, presence: true
  validates :restaurant_id, presence: true
  validates :user_id, presence: true, numericality: { greater_than:0 }
  #validates :date, :time, not_in_past:true
  # validates :seats, presence: true


  belongs_to :restaurant
  belongs_to :user
end
