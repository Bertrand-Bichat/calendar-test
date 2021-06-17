class Rental < ApplicationRecord
  belongs_to :restaurant
  has_many :bookings

  def number_of_day
    (end_date - start_date) / 86400
  end
end
