require 'test_helper'

class RukunwargasControllerTest < ActionController::TestCase
  setup do
    @rukunwarga = rukunwargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rukunwargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rukunwarga" do
    assert_difference('Rukunwarga.count') do
      post :create, rukunwarga: { name: @rukunwarga.name }
    end

    assert_redirected_to rukunwarga_path(assigns(:rukunwarga))
  end

  test "should show rukunwarga" do
    get :show, id: @rukunwarga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rukunwarga
    assert_response :success
  end

  test "should update rukunwarga" do
    patch :update, id: @rukunwarga, rukunwarga: { name: @rukunwarga.name }
    assert_redirected_to rukunwarga_path(assigns(:rukunwarga))
  end

  test "should destroy rukunwarga" do
    assert_difference('Rukunwarga.count', -1) do
      delete :destroy, id: @rukunwarga
    end

    assert_redirected_to rukunwargas_path
  end
end
