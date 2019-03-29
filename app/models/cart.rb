class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :user

  def add_ticket(ticket)
    current_item = line_items.find_by(ticket_id: ticket.id)
    ticket.decrement(:amount, 1)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_items.build(ticket_id: ticket.id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price}
  end
end
