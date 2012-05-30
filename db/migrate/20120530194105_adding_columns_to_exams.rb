class AddingColumnsToExams < ActiveRecord::Migration
  def up
    add_column :exams, :history_id, :integer
    add_column :exams, :account_id, :integer
    add_column :exams, :company_id, :integer

    add_index :exams, :history_id
    add_index :exams, :account_id
    add_index :exams, :company_id
  end
end
