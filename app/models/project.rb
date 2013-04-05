class Project < ActiveRecord::Base
  attr_accessible :description, :title, :id

  has_many :items
end
