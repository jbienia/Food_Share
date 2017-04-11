class CustomersController < ApplicationController
  def new
    @user = Customer.new
  end

  def create
    @user = Customer.new(params[:user])
    if @user.save
      redirct_to root_url, notice: "Signed Up"
    else
      render "new"
  end
end
end
