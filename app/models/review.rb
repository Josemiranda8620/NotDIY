class Review < ApplicationRecord
  belongs_to :offer
  validates :content, presence: true
  validates :stars, presence: true
end
