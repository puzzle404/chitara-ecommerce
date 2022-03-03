class CreateSandals < ActiveRecord::Migration[6.1]
  def change
    create_table :sandals do |t|
      t.float :price
      t.text :description
      t.string :model

      t.timestamps
    end
  end
end
