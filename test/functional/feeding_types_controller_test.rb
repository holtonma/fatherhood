require 'test_helper'

class FeedingTypesControllerTest < ActionController::TestCase
  setup do
    @feeding_type = feeding_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feeding_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeding_type" do
    assert_difference('FeedingType.count') do
      post :create, :feeding_type => @feeding_type.attributes
    end

    assert_redirected_to feeding_type_path(assigns(:feeding_type))
  end

  test "should show feeding_type" do
    get :show, :id => @feeding_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feeding_type.to_param
    assert_response :success
  end

  test "should update feeding_type" do
    put :update, :id => @feeding_type.to_param, :feeding_type => @feeding_type.attributes
    assert_redirected_to feeding_type_path(assigns(:feeding_type))
  end

  test "should destroy feeding_type" do
    assert_difference('FeedingType.count', -1) do
      delete :destroy, :id => @feeding_type.to_param
    end

    assert_redirected_to feeding_types_path
  end
end
