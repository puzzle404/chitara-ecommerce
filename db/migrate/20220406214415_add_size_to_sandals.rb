class AddSizeToSandals < ActiveRecord::Migration[6.1]
  def change
    add_column :sandals, :size, :integer
  end
end
