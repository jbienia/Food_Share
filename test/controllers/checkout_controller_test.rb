require 'test_helper'

class CheckoutControllerTest < ActionDispatch::IntegrationTest
  test "should get display_checkout" do
    get checkout_display_checkout_url
    assert_response :success
  end

end
