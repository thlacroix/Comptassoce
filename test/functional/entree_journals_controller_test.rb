require 'test_helper'

class EntreeJournalsControllerTest < ActionController::TestCase
  setup do
    @entree_journal = entree_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entree_journals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entree_journal" do
    assert_difference('EntreeJournal.count') do
      post :create, entree_journal: @entree_journal.attributes
    end

    assert_redirected_to entree_journal_path(assigns(:entree_journal))
  end

  test "should show entree_journal" do
    get :show, id: @entree_journal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entree_journal.to_param
    assert_response :success
  end

  test "should update entree_journal" do
    put :update, id: @entree_journal.to_param, entree_journal: @entree_journal.attributes
    assert_redirected_to entree_journal_path(assigns(:entree_journal))
  end

  test "should destroy entree_journal" do
    assert_difference('EntreeJournal.count', -1) do
      delete :destroy, id: @entree_journal.to_param
    end

    assert_redirected_to entree_journals_path
  end
end
