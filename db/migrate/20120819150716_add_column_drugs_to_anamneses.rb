class AddColumnDrugsToAnamneses < ActiveRecord::Migration
  def change
    add_column :anamneses, :drugs, :string
    add_index :anamneses, :drugs

  end
end
