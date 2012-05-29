class AddingUserIdToAnaminesis < ActiveRecord::Migration
  def up
    add_column :anamneses, :user_id, :integer
    add_index :anamneses, :user_id
  end
end
