class Booking < ApplicationRecord
  require 'date'
  belongs_to :user
  belongs_to :offer
  enum status: [:pending, :confirmed, :rejected, :completed]

  def pending?
    status == 'pending'
  end
end
