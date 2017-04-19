class SearchController < ApplicationController
  def keyword_result
    @meals = Meal.where("lower(description) LIKE '%#{params[:search_value].downcase}%' OR lower(title) LIKE '%#{params[:search_value].downcase}%'").order(:title)
  end

  def category_result
    @meals = Meal.where("lower(description) LIKE '%#{params[:search_value].downcase}%' OR lower(title) LIKE '%#{params[:search_value].downcase}%'").order(:title)
    @meals = @meals.where(category_id: params[:number])
    puts 'OH BABAY'
    puts params[:number]
  end
end
