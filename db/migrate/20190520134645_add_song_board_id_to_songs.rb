class AddSongBoardIdToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :song_board_id, :integer
  end
end
