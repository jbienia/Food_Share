class HomeController < ApplicationController
  def index
    @meals = Meal.all.page(params[:page]).per(5)
  end
end
