class Shoe < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :category, presence: true

end

# , inclusion: { in: ["hiking", "formal", "flippers", "sneakers", "wellies", "industrial", "climbing", "cycling", "sport"] }
