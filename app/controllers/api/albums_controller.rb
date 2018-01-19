class Api::AlbumsController < ApplicationController
  def index
    if params[:searchAlbumData]
      @albums = Album.where("lower(title) LIKE ?", "%#{params[:searchAlbumData].downcase}%").limit(3)
    else
      @albums = Album.all.limit(10)
    end
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
