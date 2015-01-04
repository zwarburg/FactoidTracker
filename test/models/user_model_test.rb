require 'test_helper'

class UserModelTest < ActiveSupport::TestCase

  def test_full_name
    user = FactoryGirl.create(:user, :first_name => 'John', :last_name => 'Smith')
    assert_equal 'John Smith', user.full_name
  end

  def test_null
    user = User.new()
    U

  end
end
