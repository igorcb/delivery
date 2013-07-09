class AddEnterpriseIdToBranch < ActiveRecord::Migration
  def change
    add_column :branches, :enterprise_id, :integer
  end
end
