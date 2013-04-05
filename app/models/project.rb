class Project < ActiveRecord::Base
  attr_accessible :description, :title, :id

  validates :title, :presence => :true, :uniqueness => :true
  validates :description, :presence => :true, :uniqueness => :true

  has_many :items
end
