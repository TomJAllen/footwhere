class Shoe < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :category, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_brand_category_and_size,
    against: [ :title, :brand, :size, :category ],
    using: {
      tsearch: { prefix: true }
    }
end

# , inclusion: { in: ["hiking", "formal", "flippers", "sneakers", "wellies", "industrial", "climbing", "cycling", "sport"] }
