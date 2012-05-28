class RenameUsersCompaniesToAccountsCompanies < ActiveRecord::Migration
  def up
    rename_table :users_companies, :accounts_companies
    rename_index :accounts_companies, 'index_users_companies_on_company_id', 'index_accounts_companies_on_company_id'
    rename_index :accounts_companies, 'index_accounts_companies_on_user_id', 'index_accounts_companies_on_account_id'
    rename_column :accounts_companies, :user_id, :account_id
  end
end
