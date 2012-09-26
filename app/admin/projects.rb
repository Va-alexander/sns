ActiveAdmin.register Project do
  index do
    column "Client", :name
    column "Description", :description
    default_actions
  end

end
