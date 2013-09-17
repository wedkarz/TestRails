require 'test_helper'

class MealSideTypesControllerTest < ActionController::TestCase
  setup do
    @meal_side_type = meal_side_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_side_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_side_type" do
    assert_difference('MealSideType.count') do
      post :create, meal_side_type: {  }
    end

    assert_redirected_to meal_side_type_path(assigns(:meal_side_type))
  end

  test "should show meal_side_type" do
    get :show, id: @meal_side_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_side_type
    assert_response :success
  end

  test "should update meal_side_type" do
    patch :update, id: @meal_side_type, meal_side_type: {  }
    assert_redirected_to meal_side_type_path(assigns(:meal_side_type))
  end

  test "should destroy meal_side_type" do
    assert_difference('MealSideType.count', -1) do
      delete :destroy, id: @meal_side_type
    end

    assert_redirected_to meal_side_types_path
  end
end
