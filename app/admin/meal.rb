ActiveAdmin.register Meal do
  permit_params :description,:image,:price,:category_id,:image_file_name,:_destroy
@id_value
controller do
  def edit
      @id_value= params[:id]
      #puts @id_value
      @file_path = Meal.find_by id: @id_value
    #puts  @file_path.image_file_name
  end
end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# form do |f|
#     f.inputs "Upload" do
#       f.input :image, required: true, as: :file
#     end
#     f.actions
#   end
#action_item :new, only: :index, label: 'Nouvelle Page'

action_item :view_site do

#  puts @file_path.image_file_name
  puts 'hey'
#  @thing = Meals.find_by_id(params[:id]);
  link_to "Delete Image", "/admin/meals/delete/remove/#{params[:id]}"

end

end
