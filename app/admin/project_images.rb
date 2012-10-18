ActiveAdmin.register ProjectImage do
  index do
  	column "Name", :name
    column "Description", :description
    column "Belongs to", :project
    column :created_at
    column :updated_at
    default_actions
  end

  form(:html => { :multipart => true }) do |f|
   f.inputs "Actions" do
    f.input :project
    f.input :name
    f.input :description
    f.input :event_image, :as => :file
  end
  f.buttons
 end
end
