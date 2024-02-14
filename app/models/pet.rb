class Pet < ApplicationRecord
  def set_default_levels
    self.food_level ||= 100
    self.satisfaction ||= 100
    self.health ||= 100
    self.boredom ||= 0
  end

  belongs_to :user
  belongs_to :shelter

  has_many :orders, dependent: :destroy
  has_one_attached :picture

  before_create :set_default_levels
  def picture_url
    if species == 'cat'
      'cat.png'
    elsif species == 'dog'
      'dog.png'
    else
      'puppy-test'
    end
  end

end
