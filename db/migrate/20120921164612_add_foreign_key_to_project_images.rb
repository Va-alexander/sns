class AddForeignKeyToProjectImages < ActiveRecord::Migration
  def change
  	add_column :project_images, :project_id, :integer
    add_index :project_images, :project_id
  end
end
