class Shoe < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :category, presence: true
  validates :address, presence: true
  has_one_attached :photo
  validates :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_brand_category_and_size,
    against: [ :title, :brand, :size, :category ],
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

# , inclusion: { in: ["hiking", "formal", "flippers", "sneakers", "wellies", "industrial", "climbing", "cycling", "sport"] }
