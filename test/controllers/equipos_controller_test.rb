require 'test_helper'

class EquiposControllerTest < ActionDispatch::IntegrationTest
  test "should get motorolla" do
    get equipos_motorolla_url
    assert_response :success
  end

  test "should get samsungs10" do
    get equipos_samsungs10_url
    assert_response :success
  end

  test "should get huaweip40" do
    get equipos_huaweip40_url
    assert_response :success
  end

  test "should get samsumga51" do
    get equipos_samsumga51_url
    assert_response :success
  end

end
