class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_admin
  	User.admin = params[:val]

  	redirect_to :root
  end

end
