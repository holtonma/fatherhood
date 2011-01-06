require 'test_helper'

class DiapersControllerTest < ActionController::TestCase
  setup do
    @diaper = diapers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diapers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diaper" do
    assert_difference('Diaper.count') do
      post :create, :diaper => @diaper.attributes
    end

    assert_redirected_to diaper_path(assigns(:diaper))
  end

  test "should show diaper" do
    get :show, :id => @diaper.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @diaper.to_param
    assert_response :success
  end

  test "should update diaper" do
    put :update, :id => @diaper.to_param, :diaper => @diaper.attributes
    assert_redirected_to diaper_path(assigns(:diaper))
  end

  test "should destroy diaper" do
    assert_difference('Diaper.count', -1) do
      delete :destroy, :id => @diaper.to_param
    end

    assert_redirected_to diapers_path
  end
end
