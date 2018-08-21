require 'test_helper'

class VenueSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get venue_sessions_new_url
    assert_response :success
  end

end
