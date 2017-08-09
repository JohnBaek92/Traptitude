class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.all.limit(10)
    render "/api/albums/index"
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      render "api/albums/show"
    else
      render json: @album.errors.full_messages, status: 422
    end
  end

  def show
    debugger
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
      :title, :release_date, :musician, :tracks, :image, :image_url
    )
  end
end
