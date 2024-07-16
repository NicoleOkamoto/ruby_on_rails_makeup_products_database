require "test_helper"

class ProductCategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product_category = product_categories(:one)  # Ensure this matches your fixture or factory setup
  end

  test "should get index" do
    get product_categories_index_url
    assert_response :success
    assert_not_nil assigns(:product_type)
  end
end
