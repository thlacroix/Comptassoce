require 'test_helper'

class CategorieAnalytiquesControllerTest < ActionController::TestCase
  setup do
    @categorie_analytique = categorie_analytiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie_analytiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie_analytique" do
    assert_difference('CategorieAnalytique.count') do
      post :create, categorie_analytique: @categorie_analytique.attributes
    end

    assert_redirected_to categorie_analytique_path(assigns(:categorie_analytique))
  end

  test "should show categorie_analytique" do
    get :show, id: @categorie_analytique.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie_analytique.to_param
    assert_response :success
  end

  test "should update categorie_analytique" do
    put :update, id: @categorie_analytique.to_param, categorie_analytique: @categorie_analytique.attributes
    assert_redirected_to categorie_analytique_path(assigns(:categorie_analytique))
  end

  test "should destroy categorie_analytique" do
    assert_difference('CategorieAnalytique.count', -1) do
      delete :destroy, id: @categorie_analytique.to_param
    end

    assert_redirected_to categorie_analytiques_path
  end
end
