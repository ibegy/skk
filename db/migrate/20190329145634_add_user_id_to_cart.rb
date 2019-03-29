class AddUserIdToCart < ActiveRecord::Migration[5.1]
  def change
    change_table :carts do |t|
      t.belongs_to :user, foreign_key: true
    end
  end
end
