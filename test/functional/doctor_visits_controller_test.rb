require 'test_helper'

class DoctorVisitsControllerTest < ActionController::TestCase
  setup do
    @doctor_visit = doctor_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_visit" do
    assert_difference('DoctorVisit.count') do
      post :create, :doctor_visit => @doctor_visit.attributes
    end

    assert_redirected_to doctor_visit_path(assigns(:doctor_visit))
  end

  test "should show doctor_visit" do
    get :show, :id => @doctor_visit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @doctor_visit.to_param
    assert_response :success
  end

  test "should update doctor_visit" do
    put :update, :id => @doctor_visit.to_param, :doctor_visit => @doctor_visit.attributes
    assert_redirected_to doctor_visit_path(assigns(:doctor_visit))
  end

  test "should destroy doctor_visit" do
    assert_difference('DoctorVisit.count', -1) do
      delete :destroy, :id => @doctor_visit.to_param
    end

    assert_redirected_to doctor_visits_path
  end
end
