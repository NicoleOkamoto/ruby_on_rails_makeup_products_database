require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get admins" do
    get users_admins_url
    assert_response :success
  end
end
