class SessionsController < ApplicationController
  def create
    user = Customer.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now.alert = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:shopping_cart] = nil
    session[:cart_total] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
