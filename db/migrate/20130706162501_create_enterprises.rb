class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :description, :limit => 100, null: false

      t.timestamps
    end
  end
end
