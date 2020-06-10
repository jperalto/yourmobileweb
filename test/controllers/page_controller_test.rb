require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get page_login_url
    assert_response :success
  end

  test "should get registrate" do
    get page_registrate_url
    assert_response :success
  end

  test "should get planes" do
    get page_planes_url
    assert_response :success
  end

end
