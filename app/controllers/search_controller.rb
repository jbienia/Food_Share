class SearchController < ApplicationController
  def keyword_result
    #puts params[:search_value]

  @meals = Meal.where("lower(description) LIKE '%#{params[:search_value].downcase}%' OR lower(title) LIKE '%#{params[:search_value].downcase}%'").order(:title)
#  @title = Meal.where("title LIKE '%#{params[:search_value]}%'")
  end

  def category_result
    @meals = Meal.where("lower(description) LIKE '%#{params[:search_value].downcase}%' OR lower(title) LIKE '%#{params[:search_value].downcase}%'").order(:title)
    @meals = @meals.where(category_id: params[:number])
    puts 'OH BABAY'
    puts params[:number]
  end
end
