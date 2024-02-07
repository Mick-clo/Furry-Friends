class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :shelter

  has_many :orders
  has_one_attached :picture
  def picture_url
    if type == 'cat'
      'cat.png'
    elsif type == 'dog'
      'dog.png'
    else
      'puppy-test'
    end
  end
end
