class Api::V1::DestinationsController < ApplicationController
  before_action :set_pinned_destination, only: [:show, :update, :destroy]

    # GET /users/1/pinned_destinations
    def index

      if logged_in?
        @pinned_destinations = current_user.pinned_destinations
        render json: Pinned_DestinationSerializer.new(@pinned_destinations)
      else
        render json: {
          error: "You must be logged in to see trips"
        }
      end
    end
  
    # GET /users/1/pinned_destinations/1
    def show
      render json: @pinned_destination 
      #add status functionality here at some point
    end
  
    # POST /users/1/pinned_destinations
    def create
      @pinned_destination = current_user.pinned_destinations.build(pinned_destination_params)
      if @pinned_destination.save
        render json: Pinned_DestinationSerializer.new(@pinned_destination), status: :created
      else
        resp = {
          error: @pinned_destination.errors.full_messages.to_sentence
        }
        render json: resp, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /users/1/pinned_destinations/1
    def update
      if @pinned_destination.update(pinned_destination_params)
        render json: @pinned_destination
      else
        render json: @pinned_destination.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /users/1/pinned_destinations/1
    def destroy
      render json: @pinned_destination.destroy
    end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinned_destination
      @pinned_destination = Pinned_Destination.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pinned_destination_params
      params.permit(:name, :image, :price, :description, :city, :state, :country)
    end
end