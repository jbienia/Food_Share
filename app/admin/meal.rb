ActiveAdmin.register Meal do
  permit_params :description,:image,:price,:category_id,:image_file_name
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

end
