require 'test_helper'

class ArtistSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get artist_sessions_new_url
    assert_response :success
  end

end
