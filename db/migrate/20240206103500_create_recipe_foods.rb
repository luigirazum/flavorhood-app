class CreateRecipeFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_foods do |t|
      t.decimal :quantity, null: false, default: 0

      t.timestamps
    end

    add_reference :recipe_foods, :recipe, null: false, foreign_key: true, index: true
    add_reference :recipe_foods, :food, null: false, foreign_key: true, index: true

    add_index(:recipe_foods, [:recipe_id, :food_id], unique: true)
  end
end
