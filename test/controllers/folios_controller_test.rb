require 'test_helper'

class FoliosControllerTest < ActionController::TestCase
  setup do
    @folio = folios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folio" do
    assert_difference('Folio.count') do
      post :create, folio: { expiration: @folio.expiration, folio: @folio.folio }
    end

    assert_redirected_to folio_path(assigns(:folio))
  end

  test "should show folio" do
    get :show, id: @folio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @folio
    assert_response :success
  end

  test "should update folio" do
    patch :update, id: @folio, folio: { expiration: @folio.expiration, folio: @folio.folio }
    assert_redirected_to folio_path(assigns(:folio))
  end

  test "should destroy folio" do
    assert_difference('Folio.count', -1) do
      delete :destroy, id: @folio
    end

    assert_redirected_to folios_path
  end
end
