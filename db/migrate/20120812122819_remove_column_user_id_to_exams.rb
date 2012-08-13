class RemoveColumnUserIdToExams < ActiveRecord::Migration
  def up
    remove_index :exams, :user_id
    remove_column :exams, :user_id
  end
end
