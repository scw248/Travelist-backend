class PinsController < ApplicationController
  before_action :set_destination, only: [:destroy]


   # POST /users/1/pinned_destinations
   def create
    @pin = current_user.pins.build(params)
    if @pin.save
      render json: PinSerializer.new(@pin), status: :created
    else
      resp = {
        error: @pin.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # DELETE /users/1/pinned_destinations/1
  def destroy
    render json: @pin.destroy
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pin
    @pin = Pin.find(params[:destination_id], user: current_user)
  end

  # Only allow a trusted parameter "white list" through.
  def pin_params
    params.permit(:destination_id)
  end
end
