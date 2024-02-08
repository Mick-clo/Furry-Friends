class User < ApplicationRecord
  has_many :messages
  has_many :pets, dependent: :destroy

  has_many :orders, through: :pets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def pet
    Pet.find_by(user_id: id)
  end
end
