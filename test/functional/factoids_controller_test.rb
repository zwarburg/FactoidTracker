require 'test_helper'

class FactoidsControllerTest < ActionController::TestCase
  def setup
    @factoid = factoids(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:factoids)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Factoid.count') do
      post :create, factoid: { description: "Description", name: "Zack", title: "My Factoid" }
    end

    assert_redirected_to factoid_path(assigns(:factoid))
  end

  def test_create__fails_without_title
    f = Factoid.new(:description => "My Awesome Factoid", :name => "Zack")
    assert_false f.save
  end

  def test_create__fails_without_description
    f = Factoid.new(:title => "Title", :name => "Zack")
    assert_false f.save
    end

  def test_create__fails_without_name
    f = Factoid.new(:title => "Title", :description => "My Awesome Factoid", :name => "Zack")
    assert_false f.save
  end

  def test_create__fails_for_non_unique
    f1 = Factoid.new(:title => "Title", :description => "My Awesome Factoid", :name => "Zack")
    assert f1.save
    f2 = Factoid.new(:title => "Title", :description => "My Awesome Factoid", :name => "Zack")
    assert_false f2.save
  end

  def test_show
    get :show, id: @factoid
    assert_response :success
  end

  def test_edit
    get :edit, id: @factoid
    assert_response :success
  end

  def test_update
    put :update, id: @factoid, factoid: { description: @factoid.description, name: @factoid.name, title: @factoid.title }
    assert_redirected_to factoid_path(assigns(:factoid))
  end

  def test_destroy
    assert_difference('Factoid.count', -1) do
      delete :destroy, id: @factoid
    end

    assert_redirected_to factoids_path
  end
end
