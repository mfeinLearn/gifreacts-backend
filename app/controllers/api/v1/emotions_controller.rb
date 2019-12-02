class Api::V1::EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
    render json: @emotions
  end

  def create
    @emotion = Emotion.new(emotion_params)
    if @emotion.save
      render json: @emotion
    else
      render json: {error: 'Error creating emotion'}
    end
  end

  def show
    @emotion = Emotion.find(params[:id])
    render json: @emotion
  end

  def destroy
    @emotion = Emotion.find(params[:id])
    @emotion.destroy
  end

  def update
    @emotion = Emotion.find(params[:id])
    @emotion.update(name: params["name"])
    @emotion.save
    render json: @emotion
  end

  private

  def emotion_params
    params.require(:emotion).permit(:name)
  end

end
