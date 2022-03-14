class OrderItem < ApplicationRecord
  belongs_to :sandal
  belongs_to :cart
  def total_price
    self.quantity * self.sandal.price
  end
end
