class AddingIndexesInTables < ActiveRecord::Migration
  def up
    add_index :type_users, :name
    add_index :type_users, :enabled

    add_index :type_telephones, :name
    add_index :type_telephones, :enabled

    add_index :telephones, :ddd
    add_index :telephones, :tel
    add_index :telephones, :type_telephone_id
    add_index :telephones, :branch_line
    add_index :telephones, :published
    add_index :telephones, :enabled
    add_index :telephones, :published_at
    add_index :telephones, :deleted_at

    add_index :accounts, :cpf
    add_index :accounts, :address
    add_index :accounts, :number
    add_index :accounts, :complement
    add_index :accounts, :neighborhood
    add_index :accounts, :city
    add_index :accounts, :state
    add_index :accounts, :country
  end
end
