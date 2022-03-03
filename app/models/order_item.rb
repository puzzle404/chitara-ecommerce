class OrderItem < ApplicationRecord
  belongs_to :sandal
  belongs_to :order
  belongs_to :cart
end
