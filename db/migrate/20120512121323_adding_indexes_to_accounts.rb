class AddingIndexesToAccounts < ActiveRecord::Migration
  def up
    add_index :accounts, :sex
    add_index :accounts, :rg
    add_index :accounts, :birth_certificate
    add_index :accounts, :ric
    add_index :accounts, :age
    add_index :accounts, :birth
    add_index :accounts, :mother_name
    add_index :accounts, :place_of_birth
    add_index :accounts, :civil_status
  end

  def down
  end
end
