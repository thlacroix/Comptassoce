require 'test_helper'

class CategorieComptablesControllerTest < ActionController::TestCase
  setup do
    @categorie_comptable = categorie_comptables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie_comptables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie_comptable" do
    assert_difference('CategorieComptable.count') do
      post :create, categorie_comptable: @categorie_comptable.attributes
    end

    assert_redirected_to categorie_comptable_path(assigns(:categorie_comptable))
  end

  test "should show categorie_comptable" do
    get :show, id: @categorie_comptable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie_comptable.to_param
    assert_response :success
  end

  test "should update categorie_comptable" do
    put :update, id: @categorie_comptable.to_param, categorie_comptable: @categorie_comptable.attributes
    assert_redirected_to categorie_comptable_path(assigns(:categorie_comptable))
  end

  test "should destroy categorie_comptable" do
    assert_difference('CategorieComptable.count', -1) do
      delete :destroy, id: @categorie_comptable.to_param
    end

    assert_redirected_to categorie_comptables_path
  end
end
