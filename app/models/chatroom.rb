class Chatroom < ApplicationRecord
  belongs_to :user
  has_many :messages

  validate :name, presence: true
end
