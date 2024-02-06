class RenameNicknameToUsername < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :nickname, :username
  end
end
