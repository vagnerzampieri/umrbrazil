class AddingDragonflyToCompanies < ActiveRecord::Migration
  def up
    add_column :companies, :cover_image_uid,  :string
    add_column :companies, :cover_image_name, :string
  end
end
