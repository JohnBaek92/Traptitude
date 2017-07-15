class Api::AnnotationsController < ApplicationController
  def index
    @annotations = Annotation.all
    render "api/annotations/index"
  end

  def create
    @annotation = Annotation.new(annotation_params)

    if @annotation.save
      render "api/annotations/show"
    else
      render json: @annotation.errors.full_messages, status: 422
    end
  end

  def show
    @annotation = Annotation.find(params[:id])
    render "api/annotations/show"
  end

  def update
    @annotation = Annotation.find(params[:id])
    if @annotation.update_attributes(annotation_params)
      render "api/annotations/show"
    else
      render json @annotation.errors.full_messages, status: 422
    end
  end

  def destroy
    @annotation = Annotation.find(params[:id])
    @song = Song.find(@annotation.track_id)
    if @annotation
      @annotation.destroy
      render "api/songs/show"
    else
      render json: ["No annotation found"], status: 404
    end
  end

  def annotation_params
    params.require(:annotation).permit(:user_id, :body,
      :track_id, :start_idx, :end_idx)
  end
end
