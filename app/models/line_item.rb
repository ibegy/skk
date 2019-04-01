class LineItem < ApplicationRecord
  belongs_to :ticket
  belongs_to :cart
  before_destroy :update_amount

  def total_price
    ticket.price.to_i * quantity.to_i
  end

  def update_amount
    ticket.update_attribute(:amount, ticket.amount.to_i + quantity.to_i)
  end
end
