class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validate :content, presence: true
end
