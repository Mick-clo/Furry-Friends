class AddEuroToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :euro, :integer
  end
end
