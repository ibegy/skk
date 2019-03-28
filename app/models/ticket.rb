class Ticket < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  has_many :line_items
  validates :operator, :destination, :amount, :price, :departure, :arrival, presence: true
  validates :operator, length: { maximum: 120, too_long: "%{count} characters is the maximum aloud." }
  validates :price, numericality: { greater_than_or_equal_to: 0.0 }, length: {maximum: 9}

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
