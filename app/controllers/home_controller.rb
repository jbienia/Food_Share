class HomeController < ApplicationController
  def index
    @meals = Meal.all.page(params[:page]).per(5)
  end

  def about
    @about = About.all
  end

  def contact
    @contact = Contact.all
  end
end
