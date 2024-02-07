class AddLevelsToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :food_level, :integer
    add_column :pets, :satisfaction, :integer
    add_column :pets, :boredom, :integer
  end
end
