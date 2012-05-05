class CreateAccountsTelephones < ActiveRecord::Migration
  def change
    create_table :accounts_telephones do |t|
      t.integer :account_id
      t.integer :telephone_id

      t.timestamps
    end
  end
end
