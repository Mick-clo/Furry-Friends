class BoredomJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    @pets = Pet.all
    @pets.each do |pet|
      pet.boredom -= 10 if pet.boredom >= 10
      pet.save
    end
  end
end
