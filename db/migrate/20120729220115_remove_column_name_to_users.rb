class RemoveColumnNameToUsers < ActiveRecord::Migration
  def change
    move_column :users, :name, :accounts, :name, :string
  end
end
