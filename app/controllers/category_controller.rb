class CategoryController < ApplicationController
  def display_category
    @category = Meal.where(category: [params[:value]])
    puts @category
  end
end
