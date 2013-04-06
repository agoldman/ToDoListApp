class Project < ActiveRecord::Base
  attr_accessible :description, :title, :id, :team_id

  validates :title, :presence => :true, :uniqueness => :true
  validates :description, :presence => :true, :uniqueness => :true

  has_many :items
  belongs_to :team
end
