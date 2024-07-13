require "test_helper"

class MakeupProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get makeup_products_index_url
    assert_response :success
  end

  test "should get show" do
    get makeup_products_show_url
    assert_response :success
  end
end
