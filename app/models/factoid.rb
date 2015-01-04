# == Schema Information
#
# Table name: factoids
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  description  :text
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  pivotal_link :string(255)
#

class Factoid < ActiveRecord::Base
  attr_accessible :description, :name, :title, :tag_list, :pivotal_link

  validates_presence_of :description, :name, :title
  validates_uniqueness_of :title

  acts_as_taggable_on :tags

  NAMES = User.all.collect{|user| user.full_name}

  def self.search(search)
    if search
      where('title LIKE :search OR description LIKE :search OR name LIKE :search', {:search => "%#{search}%"})
    else
      scoped
    end
  end

end
