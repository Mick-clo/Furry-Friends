class User < ApplicationRecord
  require_relative 'pet'
  has_many :messages
  has_many :pets

  has_many :orders, through: :pets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def pet
    Pet.find_by(user_id: id)
  end

  def picture_url
    @avatar = user.avatar
    if @pet.species == 'cat'
      @avatar = image_tag('cat.png', alt: 'cat')
    elsif @pet.species == 'dog'
      @avatar = image_tag('dog.png', alt: 'dog')
    else
      @avatar = image_tag('puppy-test', alt: 'puppy')
    end
  end
end
