class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :name
      t.boolean :published
      t.boolean :enabled
      t.datetime :published_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
