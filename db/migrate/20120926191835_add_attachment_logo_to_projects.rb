class AddAttachmentLogoToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :projects, :logo
  end
end
