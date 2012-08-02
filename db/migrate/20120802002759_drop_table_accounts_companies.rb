class DropTableAccountsCompanies < ActiveRecord::Migration
  def up
    drop_table :accounts_companies
  end
end
