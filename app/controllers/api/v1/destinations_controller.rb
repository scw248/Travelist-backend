class Api::V1::DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]

  # GET /destinations
  def destinations
    if logged_in?
      @destinations = Destination.all
      render json: DestinationSerializer.new(@destinations)
    else
      render json: {
        error: "You Are Currently Not Logged In"
      }
    end
  end


    # GET /users/1/destinations
    def index

      if logged_in?
        @destinations = current_user.destinations
        render json: DestinationSerializer.new(@destinations)
      else
        render json: {
          error: "You must be logged in to see trips"
        }
      end
    end
  
    # GET /users/1/destinations/1
    def show
      render json: @destination 
      #add status functionality here at some point
    end
  
    # POST /users/1/destinations
    def create
      @destination = current_user.destinations.build(destination_params)
  
      if @destination.save
        render json: DestinationSerializer.new(@destination), status: :created
      else
        resp = {
          error: @destination.errors.full_messages.to_sentence
        }
        render json: resp, status: :unprocessable_entity
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
      params.require(:destination).permit(:name, :image, :price, :description, :city, :state, :country)
    end
end