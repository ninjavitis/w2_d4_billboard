require 'test_helper'

class SongBoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get song_boards_index_url
    assert_response :success
  end

  test "should get show" do
    get song_boards_show_url
    assert_response :success
  end

end
