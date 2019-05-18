class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @Songs = @Artist.songs
  end

  def show
  end

  private


  private

  def set_artist
    @Artist = Artist.find(params[:artist_id])
  end

  def set_song
    @Song = Song.find(params[:id])
  end
end


#destroy [@Artist, @Song]

# redirect to [@Artist, @Song]