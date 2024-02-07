class AddHealthToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :health, :integer
  end
end
