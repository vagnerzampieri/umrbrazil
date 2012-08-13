class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.datetime :attachment_updated_at
      t.integer :exam_id

      t.timestamps
    end

    add_index :attachments, :attachment_file_name
    add_index :attachments, :attachment_content_type
    add_index :attachments, :attachment_file_size
    add_index :attachments, :attachment_updated_at
    add_index :attachments, :exam_id
  end
end
