require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get beranda" do
    get :beranda
    assert_response :success
  end

  test "should get tentang_kami" do
    get :tentang_kami
    assert_response :success
  end

  test "should get visi_misi" do
    get :visi_misi
    assert_response :success
  end

end
