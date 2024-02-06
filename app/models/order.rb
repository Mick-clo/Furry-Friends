class Order < ApplicationRecord
  belongs_to :item
  belongs_to :pet
end
