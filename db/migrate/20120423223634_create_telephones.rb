class CreateTelephones < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE TABLE telephones (
        id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
        created_at timestamp NOT NULL,
        updated_at timestamp NOT NULL
      );
    SQL

    add_column :telephones, :ddd,               :string
    add_column :telephones, :tel,               :string
    add_column :telephones, :type_telephone_id, :integer
    add_column :telephones, :branch_line,       :string
    add_column :telephones, :published,         :boolean
    add_column :telephones, :enabled,           :boolean
    add_column :telephones, :published_at,      :datetime
    add_column :telephones, :deleted_at,        :datetime
=begin
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
=end
  end
end
