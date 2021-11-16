class Shoe < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :category, presence: true, inclusion: { in: %w[hiking formal flippers sneakers wellies industrial climbing cycling sport] }

end
