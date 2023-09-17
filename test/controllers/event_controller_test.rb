require "test_helper"

class EventControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_index_url
    assert_response :success
  end

  test "should get calendar" do
    get event_calendar_url
    assert_response :success
  end
end
