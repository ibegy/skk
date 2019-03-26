class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :operator
      t.string :destination
      t.integer :amount
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.datetime :departure

      t.timestamps
    end
  end
end
