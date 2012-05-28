class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.references :user
      t.string :title
      t.text :description
      t.datetime :emission
      t.string :doctor
      t.string :crm
      t.has_attached_file :pdf

      t.timestamps
    end

    add_index :exams, :user_id
    add_index :exams, :title
    add_index :exams, :emission
    add_index :exams, :doctor
    add_index :exams, :crm
  end

end
