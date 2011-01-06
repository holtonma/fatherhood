require 'test_helper'

class ImmunizationsControllerTest < ActionController::TestCase
  setup do
    @immunization = immunizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:immunizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create immunization" do
    assert_difference('Immunization.count') do
      post :create, :immunization => @immunization.attributes
    end

    assert_redirected_to immunization_path(assigns(:immunization))
  end

  test "should show immunization" do
    get :show, :id => @immunization.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @immunization.to_param
    assert_response :success
  end

  test "should update immunization" do
    put :update, :id => @immunization.to_param, :immunization => @immunization.attributes
    assert_redirected_to immunization_path(assigns(:immunization))
  end

  test "should destroy immunization" do
    assert_difference('Immunization.count', -1) do
      delete :destroy, :id => @immunization.to_param
    end

    assert_redirected_to immunizations_path
  end
end
