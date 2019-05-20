class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  
  def index
    @Artists = Artist.all
  end

  def show
  end

  def edit
    render partial: "form"
  end

  def new
    @Artist = Artist.new
  end

  def create
    @Artist.Artist.new
    if @Artist.save
      redirect_to artists_path
    else
      render :new
    end
  end
  
  def update
    if @Artist.update(artist_params)
      redirect_to artists_path
    else
      render partial: "form"
    end
  end
  
  def destroy
    @Artist.destroy
    redirect_to artists_path
  end

  
  #######
  private
  #######

  def set_artist
    @Artist = Artist.find(params[:id])
  end

end
