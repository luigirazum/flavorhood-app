class CreateInventories < ActiveRecord::Migration[7.1]
  def change
    create_table :inventories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end

    add_reference :inventories, :user, null: false, foreign_key: true, index: true

    add_index :inventories, :name, unique: true
  end
end
