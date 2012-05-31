class DestroyColumnSexToAccounts < ActiveRecord::Migration
  def up
    remove_index :accounts, :sex
    remove_column :accounts, :sex
  end
end
