class Pet < ApplicationRecord
  def set_default_levels
    self.food_level ||= 100
    self.satisfaction ||= 100
    self.boredom ||= 0
  end
  belongs_to :user
  belongs_to :shelter

  has_many :orders

end
