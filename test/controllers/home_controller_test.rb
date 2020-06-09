require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get principal" do
    get home_principal_url
    assert_response :success
  end

end
