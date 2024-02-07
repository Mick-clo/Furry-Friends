class HungryJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    @pets = Pet.all
    @pets.each do |pet|
      pet.food_level -= 10 if pet.food_level >= 10
      pet.save
    end
  end
end
