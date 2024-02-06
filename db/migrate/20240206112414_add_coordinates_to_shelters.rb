class AddCoordinatesToShelters < ActiveRecord::Migration[7.1]
  def change
    add_column :shelters, :latitude, :float
    add_column :shelters, :longitude, :float
  end
end
