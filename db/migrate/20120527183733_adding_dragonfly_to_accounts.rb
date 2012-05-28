class AddingDragonflyToAccounts < ActiveRecord::Migration
  def up
    add_column :accounts, :cover_image_uid,  :string
    add_column :accounts, :cover_image_name, :string
  end
end
