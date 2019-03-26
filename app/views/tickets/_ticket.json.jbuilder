json.extract! ticket, :id, :operator, :destination, :amount, :price, :departure, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
