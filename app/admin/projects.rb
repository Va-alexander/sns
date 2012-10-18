ActiveAdmin.register Project do
  index do
    column "Client", :name
    column "Description", :description
    default_actions
  end

  form(:html => { :multipart => true }) do |f|
   f.inputs "Actions" do
    f.input :name
    f.input :description
    f.input :logo, :as => :file
    f.input :photo, :as => :file
  end
  f.buttons
 end

end
