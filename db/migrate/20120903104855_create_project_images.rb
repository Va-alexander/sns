class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
