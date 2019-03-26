class Ticket < ApplicationRecord
  # validates :operator, :destination, :amount, :price, :departure, :arrival, presence: true
  validates :operator, length: { maximum: 120, too_long: "%{count} characters is the maximum aloud." }
  validates :price, numericality: { greater_than_or_equal_to: 0.0 }, length: {maximum: 9}
end
