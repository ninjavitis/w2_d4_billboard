class SongBoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  def index
    @boards = SongBoard.all
  end

  def show
  end

  def edit
    render partial: "form"
  end

  def new
    @board = SongBoard.new
  end

  def create
    @board = SongBoard.new
    if @board.save
      redirect_to song_boards_path
    else
      render :new
    end
  end

  def update
    if @board.update(board_params)
      redirect_to song_boards_path
    else
      render partial: "form"
    end
  end

  def destroy
    @board.destroy
    redirect_to song_boards_path
  end

  private


  def board_params
    params.require(:song_board).permit(:name, :image)
  end

  def set_board
    @board = SongBoard.find(params[:id])
  end
end
