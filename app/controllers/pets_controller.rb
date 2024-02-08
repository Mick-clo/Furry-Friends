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
    redirect_to @pet, notice: 'You fed your pet! Good job!'
  end

  def play
    @pet.update(satisfaction: [@pet.satisfaction + 20, 100].min, boredom: [@pet.boredom - 20, 0].max)
    redirect_to @pet, notice: 'You played with your pet! He is happy!'
  end

  def care
    @pet.update(satisfaction: [@pet.satisfaction + 10, 100].min)
    redirect_to @pet, notice: 'Took care of your pet! Horray!'
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species)
  end
end
