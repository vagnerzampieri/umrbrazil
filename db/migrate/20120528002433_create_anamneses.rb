class CreateAnamneses < ActiveRecord::Migration
  def change
    create_table :anamneses do |t|  
      t.string :blood_type
      t.string :rh_factor
      t.decimal :weight
      t.decimal :height
      t.string :sex
      t.string :blood_pressure
      t.boolean :smoking
      
      t.timestamps
    end
  end
end
