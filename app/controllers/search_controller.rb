class SearchController < ApplicationController
  def keyword_result
    #puts params[:search_value]

  @meals = Meal.where("lower(description) LIKE '%#{params[:search_value].downcase}%' OR lower(title) LIKE '%#{params[:search_value].downcase}%'").order(:title)
#  @title = Meal.where("title LIKE '%#{params[:search_value]}%'")
  end
end
