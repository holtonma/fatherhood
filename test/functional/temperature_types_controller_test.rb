require 'test_helper'

class TemperatureTypesControllerTest < ActionController::TestCase
  setup do
    @temperature_type = temperature_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temperature_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temperature_type" do
    assert_difference('TemperatureType.count') do
      post :create, :temperature_type => @temperature_type.attributes
    end

    assert_redirected_to temperature_type_path(assigns(:temperature_type))
  end

  test "should show temperature_type" do
    get :show, :id => @temperature_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @temperature_type.to_param
    assert_response :success
  end

  test "should update temperature_type" do
    put :update, :id => @temperature_type.to_param, :temperature_type => @temperature_type.attributes
    assert_redirected_to temperature_type_path(assigns(:temperature_type))
  end

  test "should destroy temperature_type" do
    assert_difference('TemperatureType.count', -1) do
      delete :destroy, :id => @temperature_type.to_param
    end

    assert_redirected_to temperature_types_path
  end
end
