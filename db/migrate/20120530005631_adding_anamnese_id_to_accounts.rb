class AddingAnamneseIdToAccounts < ActiveRecord::Migration
  def up
    add_column :accounts, :anamnese_id, :integer
    add_index :accounts, :anamnese_id
  end
end
