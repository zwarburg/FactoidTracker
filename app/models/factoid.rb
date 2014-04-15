class Factoid < ActiveRecord::Base
  attr_accessible :description, :name, :title

  validates_presence_of :description, :name, :title
  validates_uniqueness_of :title


  NAMES = "Angela", "Geordie", "Jared", "Jennifer", "Kevin", "Matthew", "Oscar", "Owen", "Regina", "Todd", "Vaibhavi", "Zack"


  UNRANSACKABLE_ATTRIBUTES = ["id", "updated_at"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end

end
