# encoding: UTF-8
class CreateTypeUsers < ActiveRecord::Migration
  def change
    create_table :type_users do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end

    %w[Admin Médico Paciente Enfermeiro Setor].each do |type|
      TypeUser.create(:name => type)
    end
  end
end
