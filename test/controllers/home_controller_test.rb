require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  def test_index_page
    get :index
    assert_response :success
  end
end
