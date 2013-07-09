class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :enterprise_id
      t.string :description

      t.timestamps
    end
  end
end
