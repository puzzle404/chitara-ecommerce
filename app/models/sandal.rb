class Sandal < ApplicationRecord
  has_many :order_items, dependent: :destroy
end
