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
end
