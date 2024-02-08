class HealthJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    @pets = Pet.all
    @pets.each do |pet|
      pet.health -= 10 if pet.health >= 10
      pet.save
    end
  end
end
