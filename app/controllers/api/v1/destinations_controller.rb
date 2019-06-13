class Api::V1::DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]

    # GET /destinations
    def index
      @destinations = Destination.all
  
      render json: @destinations
    end
  
    # GET /users/1/destinations/1
    def show
      render json: @destination 
      #add status functionality here at some point
    end
  
    # POST /users/1/destinations
    def create
      @destination = Destination.new(destination_params)
  
      if @destination.save
        render json: @destination, status: :created, destination: @destination
      else
        render json: @destination.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /users/1/destinations/1
    def update
      if @destination.update(destination_params)
        render json: @destination
      else
        render json: @destination.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /users/1/destinations/1
    def destroy
      @destination.destroy
    end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def destination_params
      params.require(:destination).permit(:name, :image, :votes, :price, :description, :city, :state, :country)
    end
end