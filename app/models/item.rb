class Item < ActiveRecord::Base
  attr_accessible :completed, :description, :title, :project_id, :id

  belongs_to :project
end
