require 'test_helper'

class MeatControllerTest < ActionDispatch::IntegrationTest
  test "should get dispaly_meat" do
    get meat_dispaly_meat_url
    assert_response :success
  end

end
