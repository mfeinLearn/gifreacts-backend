class Api::V1::GifsController < ApplicationController
  before_action :set_gif, only: [:show, :update, :destroy]

  # GET /gifs
  def index
    @gifs = Gif.all

    render json: @gifs
  end

  # GET /gifs/1
  def show
    render json: @gif
  end

  # POST /gifs
  def create
    @gif = Gif.new(gif_params)
    @emotion = Emotion.find_or_create_by(name: params[:name])
    @humer_type = HumerType.find_or_create_by(range: params[:range])

    @gif.emotion = @emotion
    @gif.humer_type = @humer_type

    if @gif.save
      render json: @gif, status: :created, location: @gif
    else
      render json: @gif.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gifs/1
  def update
    if @gif.update(gif_params)
      render json: @gif
    else
      render json: @gif.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gifs/1
  def destroy
    @gif.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gif
      @gif = Gif.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gif_params
      params.require(:gif).permit(:name)
    end
end
