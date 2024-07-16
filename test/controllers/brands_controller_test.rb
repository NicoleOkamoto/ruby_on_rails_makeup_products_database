require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brands_index_url
    assert_response :success
  end

  test "should get show" do
    brand_one = brands(:one)
    get brand_url(brand_one)
    assert_response :success
  end
end
