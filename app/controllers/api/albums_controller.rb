class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.all.limit(10)
    render "/api/albums/index"
  end

  def show
    @album = Album.find(params[:id])
    if @album
      render "api/albums/show"
    else
      render json: {}
    end
  end

  private

  def album_params
    params.require(:album).permit(
      :title, :release_date, :musician, :tracks, :image
    )
  end
end
