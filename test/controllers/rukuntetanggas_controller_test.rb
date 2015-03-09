require 'test_helper'

class RukuntetanggasControllerTest < ActionController::TestCase
  setup do
    @rukuntetangga = rukuntetanggas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rukuntetanggas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rukuntetangga" do
    assert_difference('Rukuntetangga.count') do
      post :create, rukuntetangga: { name: @rukuntetangga.name }
    end

    assert_redirected_to rukuntetangga_path(assigns(:rukuntetangga))
  end

  test "should show rukuntetangga" do
    get :show, id: @rukuntetangga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rukuntetangga
    assert_response :success
  end

  test "should update rukuntetangga" do
    patch :update, id: @rukuntetangga, rukuntetangga: { name: @rukuntetangga.name }
    assert_redirected_to rukuntetangga_path(assigns(:rukuntetangga))
  end

  test "should destroy rukuntetangga" do
    assert_difference('Rukuntetangga.count', -1) do
      delete :destroy, id: @rukuntetangga
    end

    assert_redirected_to rukuntetanggas_path
  end
end
