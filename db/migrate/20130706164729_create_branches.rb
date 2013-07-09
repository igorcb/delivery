class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :description, limit: 100, null: false
      t.string :cnpj, limit: 14, null: false
      t.string :adress, limit: 100, null: false
      t.string :district, limit: 60, null: false
      t.string :city, limit: 60, null: false
      t.string :state, limit: 60, null: false
      t.string :zip, limit: 8, null: false
      t.string :complement, limit: 100
      t.string :number_adress, limit: 20, null: false

      t.timestamps
    end
  end
end
