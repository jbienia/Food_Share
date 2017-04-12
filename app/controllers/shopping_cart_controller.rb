class ShoppingCartController < ApplicationController
  def add_to_cart
    puts "HEY JIM"
    if !session[:shopping_cart]
      session[:shopping_cart] = {}
    end

    #stores a session variable mealID => quantity
    session[:shopping_cart][params[:meal]] = params[:search_value]
    #={params[:meal] =>params[:search_value]};
    puts "The hash"
    puts session[:shopping_cart][params[:meal]]
    puts session[:shopping_cart]
    # puts params[:search_value]
    # puts params[:meal]
    # puts current_user.id
    redirect_back(fallback_location: "/")
    #redirect_to :back
  end
end
