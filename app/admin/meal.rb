ActiveAdmin.register Meal do
  permit_params :description, :image, :price, :category_id,
                :title, :_destroy, :cost_cents

  action_item :view_site do
    link_to 'Delete Image', "/admin/meals/delete/remove/#{params[:id]}"
  end
end
