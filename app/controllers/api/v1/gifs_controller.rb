class Api::V1::GifsController < ApplicationController
  before_action :set_gif, only: [:show, :update, :destroy]

  # GET /gifs
  def index
    @gifs = Gif.all.order('id DESC')
    #render json: @gifs
  #  sighting = Sighting.find_by(id: params[:id])
    # options = {}
    # options[:data][:humer_type] = [:humer_type]
    # options[:data][:emotion] = [:emotion]
      #include: [:humer_type, :emotion]
      # options = {
      #   include: [:humer_type, :emotion]
      # }
    render json: GifSerializer.new(@gifs)
  end

  # GET /gifs/1
  def show
    # options = {
    #   include: [:humer_type, :emotion]
    # }
    render json: GifSerializer.new(@gifs)
  end

  # POST /gifs
  def create
    #byebug
    @gif = Gif.new(gif_params)
    @emotion = Emotion.find_or_create_by(name: params[:emotion])
    @humer_type = HumerType.find_or_create_by(range: params["humer_type"])

    @gif.emotion = @emotion
    @gif.humer_type = @humer_type
    #byebug
    if @gif.save
      # options = {
      #   include: [:humer_type, :emotion]
      # }
      # options = {}
      # options[:data][:humer_type] = [:humer_type]
      # options[:data][:emotion] = [:emotion]
      render json: GifSerializer.new(@gif)
    else
      render json: @gif.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gifs/1
  def update
    if @gif.update(gif_params)
      # options = {
      #   include: [:humer_type, :emotion]
      # }
      render json: GifSerializer.new(@gif)
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
# NOTE: When using fast json api and you just render an object like so VVV you get all of the attributes:
#  render json: @gif
