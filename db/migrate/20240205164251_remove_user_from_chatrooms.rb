class RemoveUserFromChatrooms < ActiveRecord::Migration[7.1]
  def change
    remove_reference :chatrooms, :user, null: false, foreign_key: true
  end
end
