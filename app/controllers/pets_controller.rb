class PetsController < ApplicationController
  before_action :set_pet, only:[:show, :feed, :play, :care]

  def show
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
    @pet.update(food_level: [@pet.food_level + 20, 100].min)
    redirect_to @pet, notice: 'Pet fed!'
  end

  def play
    @pet.update(satisfaction: [@pet.satisfaction + 20, 100].min, boredom: [@pet.boredom - 20, 0].max)
    redirect_to @pet, notice: 'Pet played with!'
  end

  def care
    @pet.update(satisfaction: [@pet.satisfaction + 10, 100].min)
    redirect_to @pet, notice: 'Pet cared for!'
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species)
  end
end
