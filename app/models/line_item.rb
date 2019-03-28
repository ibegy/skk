class LineItem < ApplicationRecord
  belongs_to :ticket
  belongs_to :cart

  def total_price
    ticket.price.to_i * quantity.to_i
  end
end
