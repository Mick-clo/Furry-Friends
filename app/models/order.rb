class Order < ApplicationRecord
  belongs_to :item
  belongs_to :pet

  monetize :amount_cents
end
