class PetsController < ApplicationController
  before_action :set_pet, only:[:show, :feed, :play, :care]

  def show
    # passive_decrease
    # @pet.save
    @food_items = Item.where(category: "food")
    @toy_items = Item.where(category: "toy")
    @medical_items = Item.where(category: "medical")
    render footer: false
  end

  def new
    @pet = Pet.new
    @shelter = Shelter.find(params[:shelter_id])
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    @pet.shelter = @shelter
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  def feed
    change_levels(20, 5, -5)
    redirect_to @pet
  end

  def play
    change_levels(0, 5, -10)
    redirect_to @pet
  end

  def care
    change_levels(0, 0, -5)
    @pet.health = [@pet.health + 10, 100].min
    @pet.save
    redirect_to @pet
  end

  def pets_random_message
    if pet.downcase == 'dog'
      dog_messages = [
        "The Akita is a majestic and loyal breed originating from Japan. Known for their dignified presence and striking appearance, Akitas possess a strong and independent nature.",
        "Akitas are fiercely protective of their families and make devoted companions, but they require experienced handling and early socialization to thrive.",
      ]
      return dog_messages.sample
    elsif pet.downcase == 'cat'
      cat_messages = [
        "The Maine Coon, America's native long-haired breed, is a charming and gentle giant among cats. Renowned for their large size, tufted ears, and bushy tails, Maine Coons have a friendly and sociable disposition.",
        "With their playful antics and affectionate nature, they easily integrate into family life. These intelligent cats are excellent hunters and enjoy interactive play.",
      ]
      return cat_messages.sample
    end
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
