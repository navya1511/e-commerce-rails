class ApplicationController < ActionController::Base
    # before_action :authenticate_user! , except: [:login]
    
    protect_from_forgery with: :exception
    private
    def current_cart
         Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound 
        cart = Cart.create 
        session[:cart_id] = cart.id
        cart
    end
    helper_method :current_cart
end
