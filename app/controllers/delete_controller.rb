class DeleteController < ApplicationController
  def remove_image
    puts params[:value]
    @meal = Meal.find_by id: params[:value]
    File.delete("#{Rails.root}/public/#{@meal.image_file_name}")
    redirect_to "/admin/meals/#{params[:value]}/edit"
  end
end
