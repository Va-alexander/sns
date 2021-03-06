class CreateProjectImageTranslation < ActiveRecord::Migration
  def up
  	ProjectImage.create_translation_table!({
  		name: :string,
  		description: :string
  		}, {
  			migrate_data: true
  		})
  end

  def down
  	ProjectImage.drop_translation_table! migrate_data: true
  end
end
