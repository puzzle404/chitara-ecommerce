class AddOrderToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :order_id, :bigint
  end
end
