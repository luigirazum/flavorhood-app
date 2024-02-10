class CreateInventoryFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :inventory_foods do |t|
      t.integer :quantity, null: false, default: 0

      t.timestamps
    end

    add_reference :inventory_foods, :inventory, null: false, foreign_key: true, index: true
    add_reference :inventory_foods, :food, null: false, foreign_key: true, index: true

    add_index(:inventory_foods, [:inventory_id, :food_id], unique: true)
  end
end
