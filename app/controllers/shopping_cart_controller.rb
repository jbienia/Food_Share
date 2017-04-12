class ShoppingCartController < ApplicationController
  def add_to_cart
    puts "HEY JIM"
    puts params[:search_value]
    puts params[:meal]
    puts current_user.id
    redirect_back(fallback_location: "/")
    #redirect_to :back
  end
end
