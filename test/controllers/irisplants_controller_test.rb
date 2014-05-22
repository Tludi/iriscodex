require 'test_helper'

class IrisplantsControllerTest < ActionController::TestCase
  setup do
    @irisplant = irisplants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irisplants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irisplant" do
    assert_difference('Irisplant.count') do
      post :create, irisplant: { image_url: @irisplant.image_url, iristype: @irisplant.iristype, name: @irisplant.name, region: @irisplant.region, year: @irisplant.year }
    end

    assert_redirected_to irisplant_path(assigns(:irisplant))
  end

  test "should show irisplant" do
    get :show, id: @irisplant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irisplant
    assert_response :success
  end

  test "should update irisplant" do
    patch :update, id: @irisplant, irisplant: { image_url: @irisplant.image_url, iristype: @irisplant.iristype, name: @irisplant.name, region: @irisplant.region, year: @irisplant.year }
    assert_redirected_to irisplant_path(assigns(:irisplant))
  end

  test "should destroy irisplant" do
    assert_difference('Irisplant.count', -1) do
      delete :destroy, id: @irisplant
    end

    assert_redirected_to irisplants_path
  end
end
