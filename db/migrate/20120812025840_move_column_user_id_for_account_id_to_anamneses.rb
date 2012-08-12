class MoveColumnUserIdForAccountIdToAnamneses < ActiveRecord::Migration
  def up
    move_column(:anamneses, :user_id, :anamneses, :account_id, :integer)
  end
end
