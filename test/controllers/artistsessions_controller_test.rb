require 'test_helper'

class ArtistsessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get artistsessions_new_url
    assert_response :success
  end

end
