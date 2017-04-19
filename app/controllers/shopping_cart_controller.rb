class ShoppingCartController < ApplicationController
  def add_to_cart
    puts "HEY JIM"
    if !session[:shopping_cart]
      session[:shopping_cart] = {}

    end

    #stores a session variable mealID => quantity
    #puts params[:search_value]

    if params[:search_value] == ""
       params[:search_value] = 1
    end

    session[:shopping_cart][params[:meal]] = params[:search_value]

    puts params[:meal]
    @meal_value = Meal.find(params[:meal])
    puts @meal_value.cost_cents

    if !session[:cart_total]
      session[:cart_total] = @meal_value.cost_cents * params[:search_value].to_i
    else
      session[:cart_total] = session[:cart_total] + (@meal_value.cost_cents * params[:search_value].to_i)
    end

    puts session[:cart_total]

    redirect_back(fallback_location: "/")

  end

  def display_cart

     @meals = Meal.find(session[:shopping_cart].keys)


  end

  def remove
    session[:shopping_cart].delete(params[:meal_id])

    @remove_value = Meal.find(params[:meal_id])
    session[:cart_total] = session[:cart_total] - @remove_value.cost_cents
    redirect_back(fallback_location: "/")
  end
end
