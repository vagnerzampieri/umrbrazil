class AddColumnCepToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :cep, :string
    add_index :companies, :cep
  end
end
