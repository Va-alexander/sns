class Project < ActiveRecord::Base
  has_many :project_image

  attr_accessible :description, :name, :logo, :photo

 # translates :name, :description

  has_attached_file :logo, :url  => "/assets/projects/:id/:style/:basename.:extension",
  :ProjectImageth => ":rails_root/public/assets/projects/:id/:style/:basename.:extension"

  #Todo validation on presence
  validates_attachment :logo,# :presence => true,
  :content_type => {:content_type => ["image/jpeg", "image/jpg", "image/png"]},
  :size => {:in => 0..900.kilobytes}

  has_attached_file :photo, :url  => "/assets/projects/:id/:style/:basename.:extension",
  :ProjectImageth => ":rails_root/public/assets/projects/:id/:style/:basename.:extension"

  #Todo validation on presence
  validates_attachment :photo,# :presence => true,
  :content_type => {:content_type => ["image/jpeg", "image/jpg", "image/png"]},
  :size => {:in => 0..1500.kilobytes}
end
