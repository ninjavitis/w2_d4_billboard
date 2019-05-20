class AddBoardIdToSongs2 < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :board_id, :integer
  end
end
