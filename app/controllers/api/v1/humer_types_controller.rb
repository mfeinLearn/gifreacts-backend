class Api::V1::HumerTypesController < ApplicationController

  def index
    @humer_types = HumerType.all
    render json: @humer_types
  end

  def create
    @humer_type = HumerType.new(humer_type_params)
    if @humer_type.save
      render json: @humer_type
    else
      render json: {error: 'Error creating humer type'}
    end
  end

  def show
    @humer_type = HumerType.find(params[:id])
    render json: @humer_type
  end

  def destroy
    @humer_type = HumerType.find(params[:id])
    @humer_type.destroy
  end

  def update
    @humer_type = HumerType.find(params[:id])
    @humer_type.update(name: params["range"])
    @humer_type.save
    render json: @humer_type
  end
  
  private

  def humer_type_params
    params.require(:humer_type).permit(:range)
  end

end
