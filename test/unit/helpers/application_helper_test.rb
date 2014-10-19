require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  def test_full_name
    user = User.new(:first_name => "Zack", :last_name => "Warburg")
    assert_equal "Zack Warburg", full_name(user)
  end

end
