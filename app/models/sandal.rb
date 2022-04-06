class Sandal < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_one_attached :photo
  validates :size, presence: true
end
