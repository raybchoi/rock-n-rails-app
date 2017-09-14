class AlbumsController < ApplicationController

  # now render the index file in the view folder
  def index
    @albums = Album.all
    render :index
  end
end
