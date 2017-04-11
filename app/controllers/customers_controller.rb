class CustomersController < ApplicationController
  def new
    @user = Customer.new
  end

  def create
    puts "ARE YOU CTETING"
    #puts  params[:user]
    @user = Customer.new(customer_params)
    # puts @user.errors.full_messages
    # puts @user[:customer]
  #  @user.save
    if @user.save!
      puts @user.errors.full_messages
      redirect_to root_url, notice: "Signed Up"

    else
      render "new"
  end
  end
  private

  def customer_params
    params.require(:customer).permit(:full_name, :user_name,:address,:province_id,:password,:password_confirmation,:city,:email )
  end
end
