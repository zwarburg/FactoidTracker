class Factoid < ActiveRecord::Base
  attr_accessible :description, :name, :title, :tag_list

  validates_presence_of :description, :name, :title
  validates_uniqueness_of :title

  acts_as_taggable_on :tags


  NAMES = "Angela", "Geordie", "Jared", "Jennifer", "Kevin", "Matthew", "Oscar", "Owen", "Regina", "Todd", "Vaibhavi", "Zack"


  UNRANSACKABLE_ATTRIBUTES = ["id", "updated_at"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE :search OR description LIKE :search', {:search => "%#{search}%"}])
    else
      find(:all)
    end
  end

end
