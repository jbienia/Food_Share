require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get keyword_result" do
    get search_keyword_result_url
    assert_response :success
  end

end
