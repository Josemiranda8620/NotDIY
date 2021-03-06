class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_detail,
    against: [:name, :detail],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
