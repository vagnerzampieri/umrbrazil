class AddColumnCepToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :cep, :string
    add_index :accounts, :cep
  end
end
