require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get memorial" do
    get static_pages_memorial_url
    assert_response :success
  end

end
