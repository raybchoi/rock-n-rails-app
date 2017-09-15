class AlbumsController < ApplicationController

  # now render the index file in the view folder
  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    Album.create (album_params)
    redirect_to('/albums')
  end

  private
  def album_params
    # this is known as strong parameters, and is done for security purposes
    params.require(:album).permit(:title, :artist, :year, :cover_art, :song_count)
  end
end
