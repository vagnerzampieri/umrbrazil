class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :email
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :persistence_token, :null => false
      t.integer :login_count, :null => false, :default => 0
      t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip
      t.integer :account_id
      t.integer :type_user_id
      t.timestamps
    end

    add_index :users, ["login"], :name => "index_users_on_login", :unique => true
    add_index :users, ["email"], :name => "index_users_on_email", :unique => true
    add_index :users, ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true

    account = Account.create

    User.create(:login => 'Admin',
      :name => 'Admin',
      :email => 'admin@umrbrazil.com',
      :password => 'adminumrbrazil',
      :password_confirmation => 'adminumrbrazil',
      :account_id => account.id,
      :type_user_id => 1
    )

  end

  def self.down
    drop_table :users
  end

end
