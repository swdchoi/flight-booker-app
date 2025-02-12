require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get booking_new_url
    assert_response :success
  end

  test "should get index" do
    get booking_index_url
    assert_response :success
  end
end
