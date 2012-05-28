class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :company
      t.references :user
      t.datetime :entry_date
      t.datetime :exit_date
      t.text :description
      t.text :prescription_drugs

      t.timestamps
    end

    add_index :histories, :company_id
    add_index :histories, :user_id
    add_index :histories, :entry_date
    add_index :histories, :exit_date
  end
end
