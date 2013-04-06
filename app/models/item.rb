class Item < ActiveRecord::Base
  attr_accessible :completed, :description, :title, :project_id, :id

  validates :title, :presence => :true, :uniqueness => :true
  validates :description, :presence => :true, :uniqueness => :true

  belongs_to :project
end
