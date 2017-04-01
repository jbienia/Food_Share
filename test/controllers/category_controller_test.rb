require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get display_category" do
    get category_display_category_url
    assert_response :success
  end

end
