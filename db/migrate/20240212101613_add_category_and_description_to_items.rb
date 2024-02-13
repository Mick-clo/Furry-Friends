class AddCategoryAndDescriptionToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :category, :string
    add_column :items, :description, :string
  end
end
