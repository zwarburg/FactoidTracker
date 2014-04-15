class Factoid < ActiveRecord::Base
  attr_accessible :description, :name, :title

  validates_presence_of :description, :name, :title
  validates_uniqueness_of :title

end
