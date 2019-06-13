class ApplicationController < ActionController::API
  def current_user
    #MAKE SURE TO CHANGE AFTER BUILDING OUT LOGIN
    User.first
  end
end
