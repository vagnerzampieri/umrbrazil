class AddingAnamnesisIdToAccounts < ActiveRecord::Migration
  def up
    add_column :accounts, :anamnesis_id, :integer
    add_index :accounts, :anamnesis_id
  end
end
