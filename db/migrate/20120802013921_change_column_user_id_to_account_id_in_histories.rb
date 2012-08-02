class ChangeColumnUserIdToAccountIdInHistories < ActiveRecord::Migration
  def up
    rename_column :histories, :user_id, :account_id
    rename_index :histories, :index_histories_on_user_id, :index_histories_on_account_id
  end
end
