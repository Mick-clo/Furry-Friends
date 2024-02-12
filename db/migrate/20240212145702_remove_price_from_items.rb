class RemovePriceFromItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :items, :price, :string
  end
end
