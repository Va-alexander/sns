class Project < ActiveRecord::Base
  has_one :project_image

  attr_accessible :description, :name
end
