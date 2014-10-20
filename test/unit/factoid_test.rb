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

require 'test_helper'

class FactoidTest < ActiveSupport::TestCase

end
