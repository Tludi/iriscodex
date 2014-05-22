require 'test_helper'

class IrisControllerTest < ActionController::TestCase
  setup do
    @iri = iris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iri" do
    assert_difference('Iri.count') do
      post :create, iri: { hybridizer: @iri.hybridizer, name: @iri.name, region: @iri.region, seedling: @iri.seedling, year: @iri.year }
    end

    assert_redirected_to iri_path(assigns(:iri))
  end

  test "should show iri" do
    get :show, id: @iri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iri
    assert_response :success
  end

  test "should update iri" do
    patch :update, id: @iri, iri: { hybridizer: @iri.hybridizer, name: @iri.name, region: @iri.region, seedling: @iri.seedling, year: @iri.year }
    assert_redirected_to iri_path(assigns(:iri))
  end

  test "should destroy iri" do
    assert_difference('Iri.count', -1) do
      delete :destroy, id: @iri
    end

    assert_redirected_to iris_path
  end
end
