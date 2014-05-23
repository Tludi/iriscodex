require 'test_helper'

class HybridizersControllerTest < ActionController::TestCase
  setup do
    @hybridizer = hybridizers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hybridizers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hybridizer" do
    assert_difference('Hybridizer.count') do
      post :create, hybridizer: { firstname: @hybridizer.firstname, irisplant_id: @hybridizer.irisplant_id, lastname: @hybridizer.lastname }
    end

    assert_redirected_to hybridizer_path(assigns(:hybridizer))
  end

  test "should show hybridizer" do
    get :show, id: @hybridizer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hybridizer
    assert_response :success
  end

  test "should update hybridizer" do
    patch :update, id: @hybridizer, hybridizer: { firstname: @hybridizer.firstname, irisplant_id: @hybridizer.irisplant_id, lastname: @hybridizer.lastname }
    assert_redirected_to hybridizer_path(assigns(:hybridizer))
  end

  test "should destroy hybridizer" do
    assert_difference('Hybridizer.count', -1) do
      delete :destroy, id: @hybridizer
    end

    assert_redirected_to hybridizers_path
  end
end
