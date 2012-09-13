# encoding: UTF-8
class CreateTypeUsers < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE EXTENSION "uuid-ossp"
    SQL

    create_table :type_users do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end
  end
end
