class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :ddd
      t.string :tel
      t.integer :type_telephone_id
      t.string :branch_line
      t.boolean :published
      t.boolean :enabled
      t.datetime :published_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
