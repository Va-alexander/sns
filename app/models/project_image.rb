class ProjectImage < ActiveRecord::Base 
	belongs_to :project

  attr_accessible :description, :name, :event_image

   has_attached_file :event_image, :styles => { :thumb => "312x260" },
   :default_style => :thumb,
   :url  => "/assets/products/:id/:style/:basename.:extension",
   :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
   
   validates_attachment :event_image, :presence => true,
   :content_type => {:content_type => ["image/jpg" ,"image/png"]},
   :size => {:in => 0..5000.kilobytes}
end
