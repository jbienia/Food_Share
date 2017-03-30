# Delete controller. Used to delete an image
class DeleteController < ApplicationController
  def remove_image
    @meal = Meal.find_by id: params[:value]
    File.delete("#{Rails.root}/app/assets/images/#{@meal.image_file_name}")
    redirect_to "/admin/meals/#{params[:value]}/edit"
  end
end
