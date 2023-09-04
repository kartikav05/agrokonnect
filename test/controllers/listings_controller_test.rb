require "test_helper"

class ListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get mylistings" do
    get listings_mylistings_url
    assert_response :success
  end
end
