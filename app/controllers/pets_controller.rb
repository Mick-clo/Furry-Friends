class PetsController < ApplicationController
  before_action :set_pet, only:[:show, :feed, :play, :care]

  def show
    # passive_decrease
    # @pet.save
    render footer: false
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  def feed
    change_levels(20, 5, -5)
    redirect_to @pet, notice: 'Thank you for your 5$ donation!'
  end

  def play
    change_levels(0, 5, -10)
    redirect_to @pet, notice: 'Thank you for your 5$ donation!'
  end

  def care
    change_levels(0, 0, -5)
    @pet.health = [@pet.health + 10, 100].min
    @pet.save
    redirect_to @pet, notice: 'Thank you for your 5$ donation!'
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species)
  end

  # Method to change levels for feed, play, and care actions
  def change_levels(food, satisfaction, boredom)
    @pet.food_level = [@pet.food_level + food, 100].min
    @pet.satisfaction = [[@pet.satisfaction + satisfaction, 10].max, 100].min
    @pet.boredom = [[@pet.boredom + boredom, 0].max, 100].min
    @pet.save
  end

  # Method to passively decrease satisfaction and increase boredom
  # def passive_decrease
   # @pet.food_level = [@pet.food_level - 1, 0].max
    #@pet.satisfaction = [[@pet.satisfaction - 1, 10].max, 100].min
   # @pet.boredom = [@pet.boredom + 1, 100].min
 # end
end
