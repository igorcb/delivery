class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id, null: false
      t.string :name, limit: 120, null: false
      t.text :description
      t.decimal :price, precision: 12, scale: 2

      t.timestamps
    end
  end
end
