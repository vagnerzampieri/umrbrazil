module MigrationExtension
  # move_column :accounts, :name, :users, :name, :type, migration: true
  def move_column(old_table, old_column, new_table, new_column, type, options = {})
    if table_exists?(new_table)
      puts "unless table_exists"
      add_column new_table, new_column, type
      add_index new_table, new_column

      if options[:migration]
        puts "migration"
        old_table.capitalize.to_s.singularize.constantize.all.each do |register|
          new_table.capitalize.to_s.singularize.constantize.update(register.id, new_column => register.new_column)
        end
      end
    end

    if table_exists?(old_table)
      if column_exists?(old_table, old_column)
        puts "column_exists"
        remove_column old_table, old_column
      end

      if index_exists?(old_table, old_column)
        puts "index_exists"
        remove_index old_table, old_column
      end
    end
  end
end
ActiveRecord::Migration.send :include, MigrationExtension
