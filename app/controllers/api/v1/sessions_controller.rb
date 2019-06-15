class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:sessions][:password])
      session[user_id] = @user.id
      render json: @user
    else
      render json: {
        error: "Invalid Email/Password"
      }
    end
  end

end
