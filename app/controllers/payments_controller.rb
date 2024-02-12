class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    @pet = @order.pet
    if @order.item.category == "food"
      change_levels(20, 5, -5)
    elsif @order.item.category == "toy"
      change_levels(0, 5, -10)
    elsif @order.item.category == "medical"
      change_levels(0, 0, -5)
      @pet.health = [@pet.health + 10, 100].min
      @pet.save
    end
  end

  private

  def change_levels(food, satisfaction, boredom)
    @pet.food_level = [@pet.food_level + food, 100].min
    @pet.satisfaction = [[@pet.satisfaction + satisfaction, 10].max, 100].min
    @pet.boredom = [[@pet.boredom + boredom, 0].max, 100].min
    @pet.save
  end

end
