class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :measurement_unit
      t.decimal :price, null: false, default: 0

      t.timestamps
    end

    add_index :foods, :name, unique: true
  end
end
