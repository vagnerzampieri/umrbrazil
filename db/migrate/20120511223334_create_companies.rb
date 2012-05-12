class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :brand_name
      t.string :cnpj
      t.string :state_inscription
      t.string :municipal_inscription
      t.string :address
      t.integer :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :site
      t.boolean :published
      t.datetime :published_at
      t.boolean :enabled
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :companies, :name
    add_index :companies, :brand_name
    add_index :companies, :cnpj
    add_index :companies, :state_inscription
    add_index :companies, :municipal_inscription
    add_index :companies, :address
    add_index :companies, :number
    add_index :companies, :complement
    add_index :companies, :neighborhood
    add_index :companies, :city
    add_index :companies, :state
    add_index :companies, :country
    add_index :companies, :site
    add_index :companies, :enabled
    add_index :companies, :deleted_at

  end
end
