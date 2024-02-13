class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    item = Item.find(params[:item_id])
    pet = Pet.find(params[:pet_id])
    order  = Order.create!(item: item, pet: pet, amount: item.price, state: 'pending')

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [
      quantity: 1,
      price_data: {
        unit_amount: item.price_cents,
        currency: 'eur',
        product_data: {
          name: item.name
        }
      }
    ],
    mode: "payment",
    success_url: order_url(order),
    cancel_url: order_url(order)
  )
  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
  end
end
