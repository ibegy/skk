class AddArrivalTimeToTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :arrival, :datetime
  end
end
