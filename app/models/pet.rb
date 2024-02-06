class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :shelter

  has_many :orders
end
