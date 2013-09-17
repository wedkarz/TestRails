require 'test_helper'

class SideTypesControllerTest < ActionController::TestCase
  setup do
    @side_type = side_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:side_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side_type" do
    assert_difference('SideType.count') do
      post :create, side_type: {  }
    end

    assert_redirected_to side_type_path(assigns(:side_type))
  end

  test "should show side_type" do
    get :show, id: @side_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side_type
    assert_response :success
  end

  test "should update side_type" do
    patch :update, id: @side_type, side_type: {  }
    assert_redirected_to side_type_path(assigns(:side_type))
  end

  test "should destroy side_type" do
    assert_difference('SideType.count', -1) do
      delete :destroy, id: @side_type
    end

    assert_redirected_to side_types_path
  end
end
