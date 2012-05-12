class AddingColumnsToAccounts < ActiveRecord::Migration
  def up
    add_column :accounts, :sex, :string
    add_column :accounts, :rg, :string
    add_column :accounts, :birth_certificate, :string
    add_column :accounts, :ric, :string
    add_column :accounts, :age, :integer
    add_column :accounts, :birth, :date
    add_column :accounts, :mother_name, :string
    add_column :accounts, :place_of_birth, :string
    add_column :accounts, :civil_status, :string
  end
end
