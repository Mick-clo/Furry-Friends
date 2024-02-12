class User < ApplicationRecord
  require_relative 'pet'
  has_many :messages, dependent: :destroy
  has_many :pets, dependent: :destroy

  has_many :orders, through: :pets, dependent: :destroy
  validates :username, presence: true
  # validates :satisfaction, presence: true, numericality: { only_integer: true }
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

  # def accumulated_donations
  #  orders.map { |order| order.item.price }.sum
  # end
end
