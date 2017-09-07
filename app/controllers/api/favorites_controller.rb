class Api::FavoritesController < ApplicationController
  def index
    @favorites = User.find_by(params[:user_id]).favorite_tracks
    render "/api/favorites/index"
  end

  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      render "/api/favorites/show"
    else
      render json: @favorite.errors.full_messages, status: 422
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    if @favorite
      @favorite.destroy
      render "/api/favorites/show"
    else
      render json: ["Favorite does not exist"], status: 404
    end
  end

  def favorite_params
    params.require(:favorite).permit(
      :user_id, :track_id
    )
  end
end
