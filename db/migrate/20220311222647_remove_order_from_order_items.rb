class RemoveOrderFromOrderItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :order_items, :order_id
  end
end
