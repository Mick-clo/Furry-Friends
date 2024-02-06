class AddAddressToShelters < ActiveRecord::Migration[7.1]
  def change
    add_column :shelters, :address, :string
  end
end
