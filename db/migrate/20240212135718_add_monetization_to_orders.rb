class AddMonetizationToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :state, :string
    add_monetize :orders, :amount, currency: { present: false }
    add_column :orders, :checkout_session_id, :string
  end
end
