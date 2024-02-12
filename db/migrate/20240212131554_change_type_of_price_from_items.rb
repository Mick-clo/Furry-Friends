class ChangeTypeOfPriceFromItems < ActiveRecord::Migration[7.1]
  def change
    add_monetize :items, :price, currency: { present: false }
  end
end
