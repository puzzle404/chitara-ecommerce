class ChangeColumnOnOrderItems < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:order_items, :order_id, nil)
  end
end
