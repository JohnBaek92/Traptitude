class Api::TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])

    if @track
      render "api/tracks/show"
    else
      render json: {}
    end
  end

  def track_params
    params.require(:track).permit(
      :album_id, :features, :producer, :lyrics
    )
  end
end
