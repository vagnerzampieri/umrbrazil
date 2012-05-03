class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :cpf
      t.string :address
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
