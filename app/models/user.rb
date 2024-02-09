class User < ApplicationRecord
  require_relative 'pet'
  has_many :messages
  has_many :pets

  has_many :orders, through: :pets
  validates :username, presence: true
  validates :satisfaction, presence: true, numericality: { only_integer: true }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def pet
    Pet.find_by(user_id: id)
  end

  def picture_url
    if pet.present? && pet.species == 'cat'
      'cat.png'
    elsif pet.present? && pet.species == 'dog'
      'dog.png'
    else
      'puppy-test.jpg'
    end
  end
end
