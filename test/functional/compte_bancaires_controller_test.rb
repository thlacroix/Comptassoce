require 'test_helper'

class CompteBancairesControllerTest < ActionController::TestCase
  setup do
    @compte_bancaire = compte_bancaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compte_bancaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compte_bancaire" do
    assert_difference('CompteBancaire.count') do
      post :create, compte_bancaire: @compte_bancaire.attributes
    end

    assert_redirected_to compte_bancaire_path(assigns(:compte_bancaire))
  end

  test "should show compte_bancaire" do
    get :show, id: @compte_bancaire.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compte_bancaire.to_param
    assert_response :success
  end

  test "should update compte_bancaire" do
    put :update, id: @compte_bancaire.to_param, compte_bancaire: @compte_bancaire.attributes
    assert_redirected_to compte_bancaire_path(assigns(:compte_bancaire))
  end

  test "should destroy compte_bancaire" do
    assert_difference('CompteBancaire.count', -1) do
      delete :destroy, id: @compte_bancaire.to_param
    end

    assert_redirected_to compte_bancaires_path
  end
end
