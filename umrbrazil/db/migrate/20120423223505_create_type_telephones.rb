# enconding: UTF-8
class CreateTypeTelephones < ActiveRecord::Migration
  def change
    create_table :type_telephones do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end

    w%[Residêncial Celular Trabalho]
  end
end