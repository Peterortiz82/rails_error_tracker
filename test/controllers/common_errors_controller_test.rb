require 'test_helper'

class CommonErrorsControllerTest < ActionController::TestCase
  setup do
    @common_error = common_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:common_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create common_error" do
    assert_difference('CommonError.count') do
      post :create, common_error: { date: @common_error.date, description: @common_error.description, error_msg: @common_error.error_msg, resolvedd: @common_error.resolvedd }
    end

    assert_redirected_to common_error_path(assigns(:common_error))
  end

  test "should show common_error" do
    get :show, id: @common_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @common_error
    assert_response :success
  end

  test "should update common_error" do
    patch :update, id: @common_error, common_error: { date: @common_error.date, description: @common_error.description, error_msg: @common_error.error_msg, resolvedd: @common_error.resolvedd }
    assert_redirected_to common_error_path(assigns(:common_error))
  end

  test "should destroy common_error" do
    assert_difference('CommonError.count', -1) do
      delete :destroy, id: @common_error
    end

    assert_redirected_to common_errors_path
  end
end
