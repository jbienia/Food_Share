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

  def display_cart
    # @meals_in_cart = []
    # session[:shopping_cart].each do |key, val|
    #   puts key
    #   @meals_in_cart << Meal.find(key)
     @meals = Meal.find(session[:shopping_cart].keys)
     #puts @meals.title



    puts"Shopping cart session"
    puts session[:shopping_cart]
    puts "All meals in cart"
    puts @meals.count
  end
  def remove
    session[:shopping_cart].delete(params[:meal_id])
    redirect_back(fallback_location: "/")
  end
end
