class Project < ActiveRecord::Base
  has_one :project_image, :dependent => :destroy

  attr_accessible :description, :name
end
