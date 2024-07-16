require "test_helper"

class MakeupProductsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product_category = product_categories(:one)  # Ensure this matches your fixture definition
  end

  test "should get index" do
    get product_categories_index_url
    assert_response :success
  end
end
