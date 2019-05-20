class SongsController < ApplicationController
  before_action :set_artist, only: [:index]
  before_action :set_song, only: [:show, :edit, :update, :destroy, :increment_rating]

  def index
    @Songs = @Artist.songs
  end

  def show
  end

  private

  def set_artist
    @Artist = Artist.find(params[:artist_id])
  end

  def set_board 
    @Board = SongBoard.find(params[:board_id])
  end

  def set_song
    @Song = Song.find(params[:id])
  end



end


#destroy [@Artist, @Song]

# redirect to [@Artist, @Song]