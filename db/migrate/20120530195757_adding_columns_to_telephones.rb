class AddingColumnsToTelephones < ActiveRecord::Migration
  def up
    add_column :telephones, :account_id, :integer
    add_column :telephones, :company_id, :integer

    add_index :telephones, :account_id
    add_index :telephones, :company_id
  end
end
