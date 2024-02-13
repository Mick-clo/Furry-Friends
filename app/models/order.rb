class Order < ApplicationRecord
  belongs_to :item
  belongs_to :pet

  monetize :amount_cents
  before_save :set_amount_euros

  def set_amount_euros
    self.euro = amount_cents / 100
  end
end
