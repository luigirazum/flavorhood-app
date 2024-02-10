class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.decimal :preparation_time
      t.decimal :cooking_time
      t.text :description
      t.boolean :public, null: false, default: false

      t.timestamps
    end

    add_reference :recipes, :user, null: false, foreign_key: true, index: true

    add_index :recipes, :name, unique: true
  end
end
