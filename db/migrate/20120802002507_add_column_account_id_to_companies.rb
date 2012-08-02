class AddColumnAccountIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :account_id, :integer
    add_index :companies, :account_id
  end
end
