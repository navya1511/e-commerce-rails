class AdminController < ApplicationController
  
  def login
    if request.post?
      if params[:email] == "navya.rails@gmail.com" && params[:password] == "navya"
        session[:admin] = "ADMIN"
        redirect_to stores_url
      else
        flash[:notice] = "Invalid credentials"
        render :actions => :login 
      end
    end
  end

  def logout
    session.delete(:admin)
    flash[:notice] = "You are logged out"
    redirect_to user_session_url
  end
end
