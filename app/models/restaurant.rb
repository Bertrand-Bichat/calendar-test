class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :rentals
end
