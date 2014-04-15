require 'test_helper'

class FactoidsControllerTest < ActionController::TestCase
  setup do
    @factoid = factoids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factoids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factoid" do
    assert_difference('Factoid.count') do
      post :create, factoid: { description: @factoid.description, name: @factoid.name, title: @factoid.title }
    end

    assert_redirected_to factoid_path(assigns(:factoid))
  end

  test "should show factoid" do
    get :show, id: @factoid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factoid
    assert_response :success
  end

  test "should update factoid" do
    put :update, id: @factoid, factoid: { description: @factoid.description, name: @factoid.name, title: @factoid.title }
    assert_redirected_to factoid_path(assigns(:factoid))
  end

  test "should destroy factoid" do
    assert_difference('Factoid.count', -1) do
      delete :destroy, id: @factoid
    end

    assert_redirected_to factoids_path
  end
end
