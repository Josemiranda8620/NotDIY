class Booking < ApplicationRecord
  require 'date'
  belongs_to :user
  belongs_to :offer
  enum status: [:pending, :confirmed, :rejected]

  validates :date, presence: true
  validates :reason, presence: true

  def pending?
    status == 'pending'
  end
end
