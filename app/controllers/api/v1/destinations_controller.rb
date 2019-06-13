class Api::V1::DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @location = Destination.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def destination_params
      params.require(:destination).permit(:name, :image, :votes, :price, :description)
    end
end